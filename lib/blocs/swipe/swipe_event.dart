part of 'swipe_bloc.dart';

/*@immutable
sealed class SwipeEvent {}

final class LoadUserEvent extends SwipeEvent {
  final List<User> users;

  LoadUserEvent({
    required this.users,
  });
}

final class LoadLeftEvent extends SwipeEvent {
  final User user;

  LoadLeftEvent({required this.user});
}

final class LoadRightEvent extends SwipeEvent {
  final User user;

  LoadRightEvent({required this.user});
}*/

/*abstract class SwipeEvent extends Equatable {
  const SwipeEvent();

  @override
  List<Object?> get props => [];
}*/

@immutable
abstract class SwipeEvent {
  const SwipeEvent();

  List<Object?> get props => [];
}

class LoadUsersEvent extends SwipeEvent {
  //final String userId;
  final List<User> users;

  const LoadUsersEvent({
    required this.users,
  });

  @override
  List<Object?> get props => [users];
}

/*class UpdateHome extends SwipeEvent {
  final List<User>? users;

  const UpdateHome({
    required this.users,
  });

  @override
  List<Object?> get props => [users];
}*/

class SwipeLeftEvent extends SwipeEvent {
  final User user;

  const SwipeLeftEvent({
    required this.user,
  });

  @override
  List<Object?> get props => [user];
}

class SwipeRightEvent extends SwipeEvent {
  final User user;

  const SwipeRightEvent({
    required this.user,
  });

  @override
  List<Object?> get props => [user];
}
