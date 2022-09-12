import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtew22/core/usecases.dart';
import 'package:wtew22/features/gpa_calculator/data/models/semester.dart';
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
    on<GetSemestersEvent>(
      (event, emit) async {
        emit(SemestersLoadingState());
        emit(
          (await getSemestersUseCase(NoParams())).fold(
            (failure) => SemesterFailureState(message: failure.getMessage),
            (semesters) => SemestersLoadedSuccessState(semesters: semesters),
          ),
        );
      },
    );

    on<AddSemesterEvent>(
      (event, emit) async {
        emit(SemestersLoadingState());
        final model = SemesterModel(
          id: event.semester.id,
          term: event.semester.term,
          subjects: event.semester.subjects,
          gpa: event.semester.gpa,
          credits: event.semester.credits,
        );
        emit(
          (await addSemesterUseCase(model)).fold(
            (failure) => SemesterFailureState(message: failure.getMessage),
            (unit) => SemesterAddedSuccessState(),
          ),
        );
      },
    );

    on<DeleteSemesterEvent>((event, emit) async {
      emit(SemestersLoadingState());
      final model = SemesterModel(
        id: event.semester.id,
        term: event.semester.term,
        subjects: event.semester.subjects,
        gpa: event.semester.gpa,
        credits: event.semester.credits,
      );
      emit(
        (await deleteSemesterUseCase(model)).fold(
          (failure) => SemesterFailureState(message: failure.getMessage),
          (unit) => SemesterDeletedSuccessState(),
        ),
      );
    });
  }
}
