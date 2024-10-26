part of 'user_bloc.dart';

sealed class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

final class CreateUser extends UserEvent {
  final String fullName;
  final String userName;

  const CreateUser({
    required this.fullName,
    required this.userName,
  });
}
