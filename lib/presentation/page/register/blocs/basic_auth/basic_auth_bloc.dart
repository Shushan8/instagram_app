import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_test_app/presentation/page/register/blocs/basic_auth/basic_auth_event.dart';
import 'package:instagram_test_app/presentation/page/register/blocs/basic_auth/basic_auth_state.dart';
import 'package:instagram_test_app/repo/auth_repo/auth_repo.dart';

class BasicAuthBloc extends Bloc<BasicAuthEvent, BasicAuthState> {
  BasicAuthBloc(this._authRepo) : super(const BasicAuthState()) {
    on<EmailChanged>(_emailChanged);
    on<PasswordChanged>(_passwordChanged);
    on<FormSubmit>(_formSubmit);
  }
  AuthRepo _authRepo;
  void _emailChanged(EmailChanged event, Emitter<BasicAuthState> emit) {
    final newValueForEmail = event.email;
    final newState = state.copyWith(
      newValueForEmail,
      state.password,
      state.status,
      state.errorMsg,
    );
    print('newValueForEmail:: $newValueForEmail');
    emit(newState);
  }

  void _passwordChanged(PasswordChanged event, Emitter<BasicAuthState> emit) {
    print(state.password);
    emit(
      state.copyWith(
        state.email,
        event.password,
        state.status,
        state.errorMsg,
      ),
    );
  }

  Future<void> _formSubmit(
      FormSubmit event, Emitter<BasicAuthState> emit) async {
    final email = state.email;
    final password = state.password;
    if (email.isEmpty || password.isEmpty) return;
    final user = await _authRepo.createUserWithEmailPassword(email, password);
    print('user: $user');
    if (user != null) {
      emit(
        state.copyWith(
          state.email,
          state.password,
          FormStatus.success,
          state.errorMsg,
        ),
      );
    }
  }
}
