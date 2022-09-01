import 'package:bloc/bloc.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';

part 'controller_lamp_living_room_event.dart';
part 'controller_lamp_living_room_state.dart';

class ControllerLampLivingRoomBloc
    extends Bloc<ControllerLampLivingRoomEvent, ControllerLampLivingRoomState> {
  ControllerLampLivingRoomBloc() : super(ControllerLampLivingRoomInitial()) {
    final dbRef = FirebaseDatabase.instance.ref('kontrol');
    on<StatusOnLampLivingRoom>((event, emit) {
      dbRef.update({'lampu_tamu': event.status});
      emit(ControllerLoadedLampLivingRoom(
          state.statusLampLivingRoom = event.status));
    });

    on<StatusOffLampLivingRoom>((event, emit) {
      dbRef.update({'lampu_tamu': event.status});
      emit(ControllerLoadedLampLivingRoom(
          state.statusLampLivingRoom = event.status));
    });
  }
}
