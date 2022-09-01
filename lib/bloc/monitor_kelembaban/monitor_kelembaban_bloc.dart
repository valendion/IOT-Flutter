import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'monitor_kelembaban_event.dart';
part 'monitor_kelembaban_state.dart';

class MonitorKelembabanBloc extends Bloc<MonitorKelembabanEvent, MonitorKelembabanState> {
  MonitorKelembabanBloc() : super(MonitorKelembabanInitial()) {
    on<MonitorKelembabanEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
