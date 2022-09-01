import 'package:bloc/bloc.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';

part 'controller_iron_event.dart';
part 'controller_iron_state.dart';

class ControllerIronBloc
    extends Bloc<ControllerIronEvent, ControllerIronState> {
  ControllerIronBloc() : super(ControllerIronInitial()) {
    final dbRef = FirebaseDatabase.instance.ref('kontrol');

    on<StatusOnIron>((event, emit) {
      dbRef.update({'setrika': event.status});
      emit(ControllerLoadedIron(state.statusIron = event.status));
    });

    on<StatusOffIron>((event, emit) {
      dbRef.update({'setrika': event.status});
      emit(ControllerLoadedIron(state.statusIron = event.status));
    });
  }
}
