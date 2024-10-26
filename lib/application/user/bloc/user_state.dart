part of 'user_bloc.dart';

sealed class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

final class UserStateInitial extends UserState {}

final class UserStateLoading extends UserState {}

final class UserStateSuccess extends UserState {}

final class UserStateError extends UserState {
  final String errorMsg;

  const UserStateError({required this.errorMsg});
}
