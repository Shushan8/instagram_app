import 'package:flutter/foundation.dart';

// enum FormStatus {
//   initial,
//   pending,
//   success,
//   error,
// }

@immutable
final class AuthState {}

final class AuthStateInitial extends AuthState {}

final class AuthStateLoading extends AuthState {}

final class AuthStateSuccess extends AuthState {}

final class AuthStateError extends AuthState {}
