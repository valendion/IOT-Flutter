import 'package:bloc/bloc.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';

part 'controller_lamp_patio_event.dart';
part 'controller_lamp_patio_state.dart';

class ControllerLampPatioBloc
    extends Bloc<ControllerLampPatioEvent, ControllerLampPatioState> {
  final dbRef = FirebaseDatabase.instance.ref('kontrol');
  ControllerLampPatioBloc() : super(ControllerLampPatioInitial()) {
    on<StatusOnLampPatio>((event, emit) {
      dbRef.update({'lampu_teras': event.status});
      emit(ControllerLoadedLampPatio(state.statusLampPatio = event.status));
    });

    on<StatusOffLampPatio>((event, emit) {
      dbRef.update({'lampu_teras': event.status});
      emit(ControllerLoadedLampPatio(state.statusLampPatio = event.status));
    });
  }
}
