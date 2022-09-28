import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'loading_event.dart';
part 'loading_state.dart';

class LoadingBloc extends Bloc<LoadingEvent, LoadingState> {
  LoadingBloc() : super(LoadingInitial()) {
    on<LoadingOn>((event, emit) {
      emit(LoadingLoaded(state.loading = event.loading));
    });

    on<LoadingOff>((event, emit) {
      emit(LoadingLoaded(state.loading = event.loading));
    });
  }
}
