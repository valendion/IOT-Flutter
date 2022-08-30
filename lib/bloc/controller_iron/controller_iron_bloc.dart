import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'controller_iron_event.dart';
part 'controller_iron_state.dart';

class ControllerIronBloc
    extends Bloc<ControllerIronEvent, ControllerIronState> {
  ControllerIronBloc() : super(ControllerIronInitial()) {
    on<StatusOnIron>((event, emit) {
      emit(ControllerLoadedIron(state.statusIron = event.status));
    });

    on<StatusOffIron>((event, emit) {
      emit(ControllerLoadedIron(state.statusIron = event.status));
    });
  }
}
