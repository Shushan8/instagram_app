import 'package:flutter/foundation.dart';

@immutable
final class AuthEvent {}

final class CreateUserEmailAndPassword extends AuthEvent {
  final String email;
  final String password;
  CreateUserEmailAndPassword(this.email, this.password);
}

final class LoginWithEmailAndPassword extends AuthEvent {
  final String email;
  final String password;
  LoginWithEmailAndPassword(this.email, this.password);
}

final class SignUpWithGoogle extends AuthEvent {}

// final class EmailChanged extends BasicAuthEvent {
//   EmailChanged(this.email);
//   final String email;
// }

// final class PasswordChanged extends BasicAuthEvent {
//   PasswordChanged(this.password);
//   final String password;
// }

// final class FormSubmit extends AuthEvent {}
