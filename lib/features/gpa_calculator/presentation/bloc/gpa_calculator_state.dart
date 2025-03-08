part of 'gpa_calculator_bloc.dart';

abstract class GPACalculatorState extends Equatable {
  const GPACalculatorState();

  @override
  List<Object> get props => [];
}

class SemestersInitialState extends GPACalculatorState {}

class SemestersLoadingState extends GPACalculatorState {}

class SemesterDeletedSuccessState extends GPACalculatorState {}

class SemesterFailureState extends GPACalculatorState {
  final String message;

  const SemesterFailureState({required this.message});
}

class SemestersLoadedSuccessState extends GPACalculatorState {
  final List<Semester> semesters;

  const SemestersLoadedSuccessState({required this.semesters});
}

class SemesterAddedSuccessState extends GPACalculatorState {}
