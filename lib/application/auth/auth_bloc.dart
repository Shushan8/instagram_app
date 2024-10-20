import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_test_app/application/auth/auth_event.dart';
import 'package:instagram_test_app/application/auth/auth_state.dart';
import 'package:instagram_test_app/domain/auth/i_auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepo;

  AuthBloc(this._authRepo) : super(AuthState()) {
    on<CreateUserEmailAndPassword>(_onCreateUserWithEmailAndPassword);
    on<SignUpWithGoogle>(_signInWithGoogle);
    on<LoginWithEmailAndPassword>(_login);
  }

  Future<void> _onCreateUserWithEmailAndPassword(
    CreateUserEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthStateLoading());

    final response = await _authRepo.signUpWithEmailAndPassword(
      email: event.email,
      password: event.password,
    );

    response.fold(
      (String errorMsg) {
        emit(
          AuthStateError(errorMsg: errorMsg),
        );
      },
      (_) {
        emit(
          AuthStateSuccess(),
        );
      },
    );
  }

  Future<void> _signInWithGoogle(
      SignUpWithGoogle event, Emitter<AuthState> emit) async {
    emit(AuthStateLoading());
    final response = await _authRepo.signUpWithGoogle();
    response.fold(
      (String errorMsg) {
        emit(
          AuthStateError(errorMsg: errorMsg),
        );
      },
      (_) {
        emit(
          AuthStateSuccess(),
        );
      },
    );
  }

  Future<void> _login(
      LoginWithEmailAndPassword event, Emitter<AuthState> emit) async {
    emit(AuthStateLoading());
    final response = await _authRepo.login(
      email: event.email,
      password: event.password,
    );

    response.fold(
      (String errorMsg) {
        emit(
          AuthStateError(
            errorMsg: errorMsg,
          ),
        );
      },
      (_) {
        emit(
          AuthStateSuccess(),
        );
      },
    );
  }
}
