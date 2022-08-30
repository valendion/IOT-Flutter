import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'controller_door_event.dart';
part 'controller_door_state.dart';

class ControllerBlocDoor extends Bloc<ControllerEvent, ControllerStateDoor> {
  ControllerBlocDoor() : super(ControllerInitialDoor()) {
    on<StatusOnDoor>((event, emit) {
      emit(ControllerLoadedDoor(state.statusDoor = event.status));
    });

    on<StatusOffDoor>((event, emit) {
      emit(ControllerLoadedDoor(state.statusDoor = event.status));
    });
  }
}
