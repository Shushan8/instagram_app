import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_test_app/application/auth/basic_auth_event.dart';
import 'package:instagram_test_app/application/auth/basic_auth_state.dart';
import 'package:instagram_test_app/domain/auth/i_auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepo;

  AuthBloc(this._authRepo) : super(AuthState()) {
    on<CreateUserEmailAndPassword>(_onCreateUserWithEmailAndPassword);
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
}
