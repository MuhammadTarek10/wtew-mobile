import 'package:dartz/dartz.dart';
import 'package:wtew22/core/error/failures.dart';
import 'package:wtew22/core/usecases.dart';
import 'package:wtew22/features/gpa_calculator/domain/entities/semester.dart';
import 'package:wtew22/features/gpa_calculator/domain/repositories/gpa_calculator_repository.dart';

class AddSemesterUseCase implements UseCase<void, Semester> {
  final GPACalculatorRepository repository;

  const AddSemesterUseCase({required this.repository});
  Future<Either<Failure, void>> call(Semester semester) async =>
      repository.addSemester(semester);
}

class EditSemesterUseCase implements UseCase<void, Semester> {
  final GPACalculatorRepository repository;

  const EditSemesterUseCase({required this.repository});
  Future<Either<Failure, void>> call(Semester semester) async =>
      repository.editSemester(semester);
}

class DeleteSemesterUseCase implements UseCase<void, Semester> {
  final GPACalculatorRepository repository;

  const DeleteSemesterUseCase({required this.repository});
  Future<Either<Failure, void>> call(Semester semester) async =>
      repository.deleteSemester(semester);
}

class GetSemestersUseCase implements UseCase<void, NoParams> {
  final GPACalculatorRepository repository;

  const GetSemestersUseCase({required this.repository});
  Future<Either<Failure, void>> call(Semester semester) async =>
      repository.getSemesters();
}
