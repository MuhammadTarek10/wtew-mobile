import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'wetw22_event.dart';
part 'wetw22_state.dart';

class Wetw22Bloc extends Bloc<Wetw22Event, Wetw22State> {
  Wetw22Bloc() : super(Wetw22Initial()) {
    on<Wetw22Event>((event, emit) {
      // TODO: implement event handler
    });
  }
}
