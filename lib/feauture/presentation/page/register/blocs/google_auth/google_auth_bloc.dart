import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/blocs/google_auth/google_auth_event.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/blocs/google_auth/google_auth_state.dart';
import 'package:instagram_test_app/repo/auth_repo/auth_repo.dart';

final class GoogleAuthBloc extends Bloc<GoogleAuthEvent, GoogleAuthState> {
  GoogleAuthBloc(this._authRepo) : super(GoogleAuthInitial()) {
    on<SignInEvent>(_signInWithGoogle);
  }
  final AuthRepo _authRepo;
  Future<void> _signInWithGoogle(
      SignInEvent event, Emitter<GoogleAuthState> emit) async {
    emit(GoogleAuthPending());
    final user = await _authRepo.signInWithGoogle();
    if (user == null) {
      return emit(GoogleAuthError());
    }

    return emit(GoogleAuthSuccess());
  }
}
