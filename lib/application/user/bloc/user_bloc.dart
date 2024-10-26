import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram_test_app/domain/user/i_user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final IUserRepository _userRepo;
  UserBloc(this._userRepo) : super(UserStateInitial()) {
    on<CreateUser>(_onCreateUser);
  }

  Future<void> _onCreateUser(
    CreateUser event,
    Emitter<UserState> emit,
  ) async {
    emit(UserStateLoading());

    final response = await _userRepo.createUser(
      fullName: event.fullName,
      userName: event.userName,
    );

    response.fold(
      (String errorMsg) {
        emit(
          UserStateError(errorMsg: errorMsg),
        );
      },
      (_) {
        emit(
          UserStateSuccess(),
        );
      },
    );
  }
}
