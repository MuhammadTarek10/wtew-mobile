import 'package:dartz/dartz.dart';
import 'package:sqflite/sqflite.dart';
import 'package:wtew22/features/gpa_calculator/domain/entities/semester.dart';

abstract class LocalDataSource {
  Future<Unit> addSemester(Semester semester);
  Future<Unit> editSemester(Semester semester);
  Future<Unit> deleteSemester(Semester semester);

  Future<List<Semester>> getSemesters();
}

class LocalDataSourceImpl implements LocalDataSource {
  final Database database;

  const LocalDataSourceImpl({required this.database});

  @override
  Future<Unit> addSemester(Semester semester) {
    // TODO: implement addSemester
    throw UnimplementedError();
  }

  @override
  Future<Unit> deleteSemester(Semester semester) {
    // TODO: implement deleteSemester
    throw UnimplementedError();
  }

  @override
  Future<Unit> editSemester(Semester semester) {
    // TODO: implement editSemester
    throw UnimplementedError();
  }

  @override
  Future<List<Semester>> getSemesters() {
    // TODO: implement getSemesters
    throw UnimplementedError();
  }
}
