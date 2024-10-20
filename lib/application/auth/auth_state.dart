import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

// enum FormStatus {
//   initial,
//   pending,
//   success,
//   error,
// }

final class AuthState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

final class AuthStateInitial extends AuthState {}

final class AuthStateLoading extends AuthState {}

final class AuthStateSuccess extends AuthState {}

final class AuthStateError extends AuthState {
  final String errorMsg;

  AuthStateError({required this.errorMsg});
}
