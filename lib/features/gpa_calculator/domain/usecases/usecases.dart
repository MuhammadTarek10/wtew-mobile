import 'package:dartz/dartz.dart';
import 'package:wtew/core/error/failures.dart';
import 'package:wtew/core/usecases.dart';
import 'package:wtew/features/gpa_calculator/data/models/semester.dart';
import 'package:wtew/features/gpa_calculator/domain/repositories/gpa_calculator_repository.dart';

class AddSemesterUseCase implements UseCase<void, SemesterModel> {
  final GPACalculatorRepository repository;
  const AddSemesterUseCase({required this.repository});

  Future<Either<Failure, void>> call(SemesterModel semester) async =>
      repository.addSemester(semester);
}

class EditSemesterUseCase implements UseCase<void, SemesterModel> {
  final GPACalculatorRepository repository;
  const EditSemesterUseCase({required this.repository});

  Future<Either<Failure, void>> call(SemesterModel semester) async =>
      repository.editSemester(semester);
}

class DeleteSemesterUseCase implements UseCase<void, SemesterModel> {
  final GPACalculatorRepository repository;
  const DeleteSemesterUseCase({required this.repository});

  Future<Either<Failure, void>> call(SemesterModel semester) async =>
      repository.deleteSemester(semester);
}

class GetSemestersUseCase implements UseCase<void, NoParams> {
  final GPACalculatorRepository repository;
  const GetSemestersUseCase({required this.repository});

  Future<Either<Failure, List<SemesterModel>>> call(NoParams params) async =>
      repository.getSemesters();
}
