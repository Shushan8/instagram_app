import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/blocs/basic_auth/basic_auth_event.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/blocs/basic_auth/basic_auth_state.dart';
import 'package:instagram_test_app/repo/auth_repo/auth_repo.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepo) : super(AuthState()) {
    on<CreateUserEmailAndPassword>(_onCreateUserWithEmailAndPassword);
    // on<PasswordChanged>(_passwordChanged);
    // on<FormSubmit>(_formSubmit);
  }
  final AuthRepo _authRepo;
  Future<void> _onCreateUserWithEmailAndPassword(
      CreateUserEmailAndPassword event, Emitter<AuthState> emit) async {
    emit(AuthStateLoading());
    final newValueForEmail = event.email;
    final newValueForPassword = event.password;
    final user = await _authRepo.createUserWithEmailPassword(
        newValueForEmail, newValueForPassword);
    if (user == null) {
      emit(AuthStateError());
    } else {
      emit(AuthStateSuccess());
    }
  }

  // Future<void> _formSubmit(
  //     AuthState event, Emitter<AuthState> emit) async {
  //   final email = state.email;
  //   final password = state.password;
  //   if (email.isEmpty || password.isEmpty) return;
  //   final user = await _authRepo.createUserWithEmailPassword(email, password);
  //   print('user: $user');
  //   if (user != null) {
  //     emit(
  //       state.status = AuthStateSuccess()
  //     );
  //   }
  // }
}
