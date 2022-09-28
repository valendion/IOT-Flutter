import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../model/monitoring_model.dart';

part 'first_layout_event.dart';
part 'first_layout_state.dart';

class FirstLayoutBloc extends Bloc<FirstLayoutEvent, FirstLayoutState> {
  FirstLayoutBloc() : super(FirstLayoutInitial()) {
    on<FirstLayoutAdd>((event, emit) {
      emit(FirstLayoutLoaded(state.monitoring = event.monitoring));
    });
  }
}
