import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'controller_fence_event.dart';
part 'controller_fence_state.dart';

class ControllerFenceBloc
    extends Bloc<ControllerFenceEvent, ControllerStateFence> {
  ControllerFenceBloc() : super(ControllerInitialFence()) {
    on<StatusOnFence>((event, emit) {
      emit(ControllerLoadedFence(state.statusFence = event.status));
    });

    on<StatusOffFence>((event, emit) {
      emit(ControllerLoadedFence(state.statusFence = event.status));
    });
  }
}
