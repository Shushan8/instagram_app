import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/blocs/basic_auth/basic_auth_state.dart';

@immutable
final class LoginState {
  final String email;
  final String password;
  // final FormStatu formStatus;

  const LoginState(
      {this.email = '',
      // this.formStatus = FormStatus.initial,
      this.password = ''});

  LoginState copyWith({
    String? email,
    String? password,
    FormStatus? formStatus,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      // formStatus: formStatus ?? this.formStatus,
    );
  }
}
