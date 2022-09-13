import 'package:dartz/dartz.dart';
import 'package:sqflite/sqflite.dart';
import 'package:wtew22/config/utils/app_constants.dart';
import 'package:wtew22/features/gpa_calculator/data/models/semester.dart';

abstract class LocalDataSource {
  Future<Unit> addSemester(SemesterModel semester);
  Future<Unit> editSemester(SemesterModel semester);
  Future<Unit> deleteSemester(SemesterModel semester);

  Future<List<SemesterModel>> getSemesters();
}

class LocalDataSourceImpl implements LocalDataSource {
  final Database database;

  const LocalDataSourceImpl({required this.database});

  @override
  Future<Unit> addSemester(SemesterModel semester) async {
    await database.insert(
      AppConstants.databaseSemesterTableName,
      semester.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return unit;
  }

  @override
  Future<Unit> deleteSemester(SemesterModel semester) async {
    await database.delete(
      AppConstants.databaseSemesterTableName,
      where: "${AppConstants.databaseColSemesterId} = ?",
      whereArgs: [semester.id],
    );
    return unit;
  }

  @override
  Future<Unit> editSemester(SemesterModel semester) async {
    await database.update(
      AppConstants.databaseSemesterTableName,
      semester.toJson(),
      where: "${AppConstants.databaseColSemesterId} = ?",
      whereArgs: [semester.id],
    );
    return unit;
  }

  @override
  Future<List<SemesterModel>> getSemesters() async {
    final semesters = await database.query(
      AppConstants.databaseSemesterTableName,
      columns: [
        AppConstants.databaseColSemesterId,
        AppConstants.databseColSemesterTerm,
        AppConstants.databaseColSemeterGPA,
        AppConstants.databaseColSemesterCredits,
      ],
    );
    return SemesterModel.fromJsonList(semesters);
  }
}
