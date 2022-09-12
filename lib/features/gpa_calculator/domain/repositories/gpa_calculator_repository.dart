import 'package:dartz/dartz.dart';
import 'package:wtew22/core/error/failures.dart';
import 'package:wtew22/features/gpa_calculator/data/models/semester.dart';

abstract class GPACalculatorRepository {
  Future<Either<Failure, Unit>> addSemester(SemesterModel semester);
  Future<Either<Failure, Unit>> editSemester(SemesterModel semester);
  Future<Either<Failure, Unit>> deleteSemester(SemesterModel semester);

  Future<Either<Failure, List<SemesterModel>>> getSemesters();
}
