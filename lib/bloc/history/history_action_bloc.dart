import 'package:bloc/bloc.dart';
import 'package:iot_smart_home/model/history_model.dart';
import 'package:meta/meta.dart';

part 'history_action_event.dart';
part 'history_action_state.dart';

class HistoryActionBloc extends Bloc<HistoryActionEvent, HistoryActionState> {
  HistoryActionBloc() : super(HistoryActionInitial()) {
    on<HistoryActionAdd>((event, emit) {
      emit(HistoryActionLoaded(state.historis = event.historis));
    });
  }
}
