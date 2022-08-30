import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'controller_lamp_patio_event.dart';
part 'controller_lamp_patio_state.dart';

class ControllerLampPatioBloc
    extends Bloc<ControllerLampPatioEvent, ControllerLampPatioState> {
  ControllerLampPatioBloc() : super(ControllerLampPatioInitial()) {
    on<StatusOnLampPatio>((event, emit) {
      emit(ControllerLoadedLampPatio(state.statusLampPatio = event.status));
    });

    on<StatusOffLampPatio>((event, emit) {
      emit(ControllerLoadedLampPatio(state.statusLampPatio = event.status));
    });
  }
}
