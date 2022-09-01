import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:iot_smart_home/model/history_model.dart';
import 'package:meta/meta.dart';

part 'controller_door_event.dart';
part 'controller_door_state.dart';

class ControllerBlocDoor extends Bloc<ControllerEvent, ControllerStateDoor> {
  ControllerBlocDoor() : super(ControllerInitialDoor()) {
    final dbRef = FirebaseDatabase.instance.ref('kontrol');

    on<StatusOnDoor>((event, emit) {
      dbRef.update({'pintu': event.status});
      emit(ControllerLoadedDoor(state.statusDoor = event.status));
    });

    on<StatusOffDoor>((event, emit) {
      dbRef.update({'pintu': event.status});
      emit(ControllerLoadedDoor(state.statusDoor = event.status));
    });
  }
}
