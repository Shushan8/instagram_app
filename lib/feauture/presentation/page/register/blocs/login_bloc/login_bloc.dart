import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/blocs/basic_auth/basic_auth_state.dart';
//import 'package:instagram_test_app/feauture/presentation/page/register/blocs/basic_auth/basic_auth_event.dart';
//import 'package:instagram_test_app/feauture/presentation/page/register/blocs/basic_auth/basic_auth_state.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/blocs/login_bloc/login_event.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/blocs/login_bloc/login_state.dart';
import 'package:instagram_test_app/repo/auth_repo/auth_repo.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  AuthRepo _authRepo;
  LoginBloc(this._authRepo) : super(const LoginState()) {
    // on<EmailChanged>(_emailChanged);
    // on<PasswordChanged>(_passwordChanged);
    // on<FormSubmit>(_formSubmit);
  }

  @override
  Stream<LoginState> mapEventToState(LoginEvent loginEvent) async* {
    if (loginEvent is ChangeEmail) {
      yield state.copyWith(
        email: loginEvent.email,
      );
    } else if (loginEvent is ChangePassword) {
      yield state.copyWith(password: loginEvent.password);
    } else if (loginEvent is SubmitLogin) {
      yield state.copyWith(formStatus: FormStatus.success);
    }

    try {
      await _authRepo.login();
      yield state.copyWith(formStatus: FormStatus.success);
    } catch (e) {
      yield state.copyWith(formStatus: FormStatus.error);
    }
  }
}
