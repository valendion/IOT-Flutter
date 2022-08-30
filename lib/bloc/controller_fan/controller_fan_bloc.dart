import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'controller_fan_event.dart';
part 'controller_fan_state.dart';

class ControllerFanBloc extends Bloc<ControllerFanEvent, ControllerFanState> {
  ControllerFanBloc() : super(ControllerFanInitial()) {
    on<StatusOnFan>((event, emit) {
      emit(ControllerLoadedFan(state.statusFan = event.statusFan));
    });

    on<StatusOffFan>((event, emit) {
      emit(ControllerLoadedFan(state.statusFan = event.statusFan));
    });
  }
}
