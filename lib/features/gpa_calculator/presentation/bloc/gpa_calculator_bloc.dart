import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:wtew22/config/utils/app_constants.dart';
import 'package:wtew22/features/gpa_calculator/domain/entities/semester.dart';
import 'package:wtew22/features/gpa_calculator/domain/usecases/usecases.dart';

part 'gpa_calculator_event.dart';
part 'gpa_calculator_state.dart';

class GPACalculatorBloc extends Bloc<GPACalculatorEvent, GPACalculatorState> {
  final AddSemesterUseCase addSemesterUseCase;
  final EditSemesterUseCase editSemesterUseCase;
  final DeleteSemesterUseCase deleteSemesterUseCase;
  final GetSemestersUseCase getSemestersUseCase;
  GPACalculatorBloc({
    required this.addSemesterUseCase,
    required this.editSemesterUseCase,
    required this.deleteSemesterUseCase,
    required this.getSemestersUseCase,
  }) : super(SemestersInitialState()) {
    on<GetSemestersEvent>((event, emit) {
      emit(SemestersLoadedSuccessState(semesters: AppConstants.semesters));
    });
  }
}
