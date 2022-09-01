import 'package:bloc/bloc.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';

part 'controller_fence_event.dart';
part 'controller_fence_state.dart';

class ControllerFenceBloc
    extends Bloc<ControllerFenceEvent, ControllerStateFence> {
  ControllerFenceBloc() : super(ControllerInitialFence()) {
    final dbRef = FirebaseDatabase.instance.ref('kontrol');
    on<StatusOnFence>((event, emit) {
      dbRef.update({'pagar': event.status});
      emit(ControllerLoadedFence(state.statusFence = event.status));
    });

    on<StatusOffFence>((event, emit) {
      dbRef.update({'pagar': event.status});
      emit(ControllerLoadedFence(state.statusFence = event.status));
    });
  }
}
