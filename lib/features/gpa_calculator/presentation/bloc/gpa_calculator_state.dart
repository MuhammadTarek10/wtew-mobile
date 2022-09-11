part of 'gpa_calculator_bloc.dart';

abstract class GPACalculatorState extends Equatable {
  const GPACalculatorState();

  @override
  List<Object> get props => [];
}

class SemestersInitialState extends GPACalculatorState {}

class SemesterAddSuccessState extends GPACalculatorState {}

class SemestersLoadedSuccessState extends GPACalculatorState {
  final List<Semester> semesters;

  const SemestersLoadedSuccessState({required this.semesters});
}
