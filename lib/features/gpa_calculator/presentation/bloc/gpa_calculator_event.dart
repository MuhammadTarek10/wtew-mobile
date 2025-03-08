part of 'gpa_calculator_bloc.dart';

abstract class GPACalculatorEvent extends Equatable {
  const GPACalculatorEvent();

  @override
  List<Object> get props => [];
}

class AddSemesterEvent extends GPACalculatorEvent {
  final Semester semester;

  const AddSemesterEvent({required this.semester});
}

class EditSemesterEvent extends GPACalculatorEvent {
  final Semester semester;

  const EditSemesterEvent({required this.semester});
}

class DeleteSemesterEvent extends GPACalculatorEvent {
  final Semester semester;

  const DeleteSemesterEvent({required this.semester});
}

class GetSemestersEvent extends GPACalculatorEvent {}
