import 'package:bloc/bloc.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';

part 'controller_fan_event.dart';
part 'controller_fan_state.dart';

class ControllerFanBloc extends Bloc<ControllerFanEvent, ControllerFanState> {
  ControllerFanBloc() : super(ControllerFanInitial()) {
    final dbRef = FirebaseDatabase.instance.ref('kontrol');
    on<StatusOnFan>((event, emit) {
      dbRef.update({'kipas': event.statusFan});
      emit(ControllerLoadedFan(state.statusFan = event.statusFan));
    });

    on<StatusOffFan>((event, emit) {
      dbRef.update({'kipas': event.statusFan});
      emit(ControllerLoadedFan(state.statusFan = event.statusFan));
    });
  }
}
