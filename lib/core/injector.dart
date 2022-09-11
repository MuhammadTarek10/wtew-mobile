import 'package:get_it/get_it.dart';
import 'package:sqflite/sqflite.dart';
import 'package:wtew22/config/utils/app_strings.dart';
import 'package:wtew22/features/gpa_calculator/data/datasources/local_data_source.dart';
import 'package:wtew22/features/gpa_calculator/data/repositories/gpa_calculator_repository_impl.dart';
import 'package:wtew22/features/gpa_calculator/domain/usecases/usecases.dart';
import 'package:wtew22/features/gpa_calculator/presentation/bloc/gpa_calculator_bloc.dart';

final instance = GetIt.instance;

Future<dynamic> _createDatabase(Database db, int version) async {
  await db.execute(
    '''
  CREATE TABLE IF NOT EXISTS "${AppStrings.databaseSemesterTableName}" (
    ${AppStrings.databaseColSemesterId} TEXT PRIMARY KEY,
    ${AppStrings.databseColSemesterTerm} INTEGER NOT NULL,
    ${AppStrings.databaseColSemeterGPA} DOUBLE NOT NULL
  )
  ''',
  );

  await db.execute(
    '''
    CREATE TABLE IF NOT EXISTS "${AppStrings.databaseSubjectTableName}" (
      ${AppStrings.databaseColSubjectHours} INTEGER NOT NULL,
      ${AppStrings.databaseColSemeterGPA} DOUBLE NOT NULL,
      ${AppStrings.databaseColSubjectSemesterId} TEXT NOT NULL,
      FOREIGN KEY (${AppStrings.databaseColSubjectSemesterId}) REFERENCES ${AppStrings.databaseSemesterTableName} (${AppStrings.databaseColSemesterId})
    )
    ''',
  );
}

Future<dynamic> _onConfigure(Database db) async {
  await db.execute("PRAGMA foreign_keys = ON");
}

Future<void> initApp() async {
  Database database = await openDatabase(
    '${await getDatabasesPath()}/${AppStrings.databaseName}',
    onCreate: _createDatabase,
    onConfigure: _onConfigure,
    version: AppStrings.databaseVersion,
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
}
