import 'package:dartz/dartz.dart';
import 'package:wtew22/core/error/failures.dart';
import 'package:wtew22/features/gpa_calculator/domain/entities/semester.dart';

abstract class GPACalculatorRepository {
  Future<Either<Failure, Unit>> addSemester(Semester semester);
  Future<Either<Failure, Unit>> editSemester(Semester semester);
  Future<Either<Failure, Unit>> deleteSemester(Semester semester);

  Future<Either<Failure, List<Semester>>> getSemesters();
}
