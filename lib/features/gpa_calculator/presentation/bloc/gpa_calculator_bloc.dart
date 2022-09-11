import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'gpa_calculator_event.dart';
part 'gpa_calculator_state.dart';

class GpaCalculatorBloc extends Bloc<GpaCalculatorEvent, GpaCalculatorState> {
  GpaCalculatorBloc() : super(GpaCalculatorInitial()) {
    on<GpaCalculatorEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
