/*part of 'swipe_bloc.dart';

@immutable
sealed class SwipeState {}

final class SwipeLoading extends SwipeState {}

final class SwipeLoaded extends SwipeState {
  final List<User> users;

  SwipeLoaded({
    required this.users,
  });
}

final class SwipeError extends SwipeState {}*/

part of 'swipe_bloc.dart';

/*abstract class SwipeState extends Equatable {
  const SwipeState();

  @override
  List<Object> get props => [];
}*/
/*@immutable
sealed class SwipeState {
  const SwipeState();

  @override
  List<Object> get props => [];
}

class SwipeLoading extends SwipeState {}

class SwipeLoaded extends SwipeState {
  final List<User> users;

  SwipeLoaded({
    required this.users,
  });

  @override
  List<Object> get props => [users];
}

class SwipeError extends SwipeState {}
*/

@immutable
abstract class SwipeState {
  const SwipeState();

  List<Object> get props => [];
}

class SwipeLoading extends SwipeState {}

class SwipeLoaded extends SwipeState {
  final List<User> users;

  const SwipeLoaded({
    required this.users,
  });

  @override
  List<Object> get props => [users];
}

class SwipeError extends SwipeState {}
