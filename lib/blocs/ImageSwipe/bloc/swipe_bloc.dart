import 'package:arrow_dating_app/models/user_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'swipe_event.dart';
part 'swipe_state.dart';

class SwipeBloc extends Bloc<SwipeEvent, SwipeState> {
  SwipeBloc() : super(SwipeLoading()) {
    on<SwipeEvent>((event, emit) {
      if (event is LoadUsersEvent) {
        emit(SwipeLoaded(users: event.users));
      } else if (event is SwipeLeftEvent) {
        emit(SwipeLoading());
        emit(SwipeLoaded(
            users: (state as SwipeLoaded).users..remove(event.user)));
      } else if (event is SwipeRightEvent) {
        emit(SwipeLoading());
        emit(SwipeLoaded(
            users: (state as SwipeLoaded).users..remove(event.user)));
      }
    });
  }
}
