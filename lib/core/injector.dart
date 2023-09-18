import 'package:get_it/get_it.dart';
import 'package:sqflite/sqflite.dart';
import 'package:wtew/config/utils/app_constants.dart';
import 'package:wtew/features/gpa_calculator/data/datasources/local_data_source.dart';
import 'package:wtew/features/gpa_calculator/data/repositories/gpa_calculator_repository_impl.dart';
import 'package:wtew/features/gpa_calculator/domain/usecases/usecases.dart';
import 'package:wtew/features/gpa_calculator/presentation/bloc/gpa_calculator_bloc.dart';
import 'package:wtew/features/gpa_calculator/presentation/controllers/gpa_calculator_controller.dart';

final instance = GetIt.instance;

Future<dynamic> _createDatabase(Database db, int version) async {
  await db.execute(
    '''
  CREATE TABLE IF NOT EXISTS "${AppConstants.databaseSemesterTableName}" (
    ${AppConstants.databaseColSemesterId} TEXT PRIMARY KEY,
    ${AppConstants.datableColSemesterTerm} INTEGER NOT NULL,
    ${AppConstants.databaseColSemesterGPA} DOUBLE NOT NULL,
    ${AppConstants.databaseColSemesterCredits} int NOT NULL
  )
  ''',
  );

  await db.execute(
    '''
    CREATE TABLE IF NOT EXISTS "${AppConstants.databaseSubjectTableName}" (
      ${AppConstants.databaseColSubjectName} TEXT NOT NULL,
      ${AppConstants.databaseColSubjectHours} INTEGER NOT NULL,
      ${AppConstants.datableColSubjectGrade} TEXT NOT NULL,
      ${AppConstants.databaseColSubjectSemesterId} TEXT NOT NULL,
      FOREIGN KEY (${AppConstants.databaseColSubjectSemesterId}) REFERENCES ${AppConstants.databaseSemesterTableName} (${AppConstants.databaseColSemesterId})
    )
    ''',
  );
}

Future<dynamic> _onConfigure(Database db) async {
  await db.execute("PRAGMA foreign_keys = ON");
}

Future<void> initApp() async {
  Database database = await openDatabase(
    '${await getDatabasesPath()}/${AppConstants.databaseName}',
    onCreate: _createDatabase,
    onConfigure: _onConfigure,
    version: AppConstants.databaseVersion,
  );

  instance.registerLazySingleton<Database>(() => database);
  instance.registerLazySingleton<LocalDataSourceImpl>(
    () => LocalDataSourceImpl(
      database: instance<Database>(),
    ),
  );
}

void initGPA() {
  if (!GetIt.I.isRegistered<GPACalculatorRepositoryImpl>()) {
    instance.registerFactory<GPACalculatorRepositoryImpl>(
      () => GPACalculatorRepositoryImpl(
        localDataSource: instance<LocalDataSourceImpl>(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<AddSemesterUseCase>()) {
    instance.registerFactory<AddSemesterUseCase>(
      () => AddSemesterUseCase(
        repository: instance<GPACalculatorRepositoryImpl>(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<EditSemesterUseCase>()) {
    instance.registerFactory<EditSemesterUseCase>(
      () => EditSemesterUseCase(
        repository: instance<GPACalculatorRepositoryImpl>(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<DeleteSemesterUseCase>()) {
    instance.registerFactory<DeleteSemesterUseCase>(
      () => DeleteSemesterUseCase(
        repository: instance<GPACalculatorRepositoryImpl>(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<GetSemestersUseCase>()) {
    instance.registerFactory<GetSemestersUseCase>(
      () => GetSemestersUseCase(
        repository: instance<GPACalculatorRepositoryImpl>(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<GPACalculatorBloc>()) {
    instance.registerFactory<GPACalculatorBloc>(
      () => GPACalculatorBloc(
        addSemesterUseCase: instance<AddSemesterUseCase>(),
        editSemesterUseCase: instance<EditSemesterUseCase>(),
        deleteSemesterUseCase: instance<DeleteSemesterUseCase>(),
        getSemestersUseCase: instance<GetSemestersUseCase>(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<GPACalculatorController>()) {
    instance.registerFactory<GPACalculatorController>(
      () => GPACalculatorController(
        bloc: instance<GPACalculatorBloc>(),
      ),
    );
  }
}
