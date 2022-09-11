import 'package:wtew22/features/gpa_calculator/data/datasources/local_data_source.dart';
import 'package:wtew22/features/gpa_calculator/domain/entities/semester.dart';
import 'package:wtew22/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:wtew22/features/gpa_calculator/domain/repositories/gpa_calculator_repository.dart';

class GPACalculatorRepositoryImpl implements GPACalculatorRepository {
  final LocalDataSource localDataSource;

  const GPACalculatorRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, Unit>> addSemester(Semester semester) async {
    try {
      await localDataSource.addSemester(semester);
      return const Right(unit);
    } catch (error) {
      return const Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteSemester(Semester semester) async {
    try {
      await localDataSource.deleteSemester(semester);
      return const Right(unit);
    } catch (error) {
      return const Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> editSemester(Semester semester) async {
    try {
      await localDataSource.editSemester(semester);
      return const Right(unit);
    } catch (error) {
      return const Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, List<Semester>>> getSemesters() async {
    try {
      final semesters = await localDataSource.getSemesters();
      return Right(semesters);
    } catch (error) {
      return const Left(CacheFailure());
    }
  }
}
