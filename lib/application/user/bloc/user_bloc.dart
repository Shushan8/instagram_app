import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_test_app/domain/user/i_user_repository.dart';
import 'package:instagram_test_app/infrastructure/user/models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final IUserRepository _userRepo;
  UserBloc(this._userRepo) : super(UserStateInitial()) {
    on<CreateUser>(_onCreateUser);
    on<GetUser>(_onGetUser);
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
        // emit(
        //   UserStateSuccess(),
        // );
        add(GetUser());
      },
    );
  }

  Future<void> _onGetUser(
    GetUser event,
    Emitter<UserState> emit,
  ) async {
    emit(UserStateLoading());
    final currentUser = FirebaseAuth.instance.currentUser;

    final user = await _userRepo.getUser(
      uid: currentUser!.uid,
    );

    user.fold((String errorMsg) {
      emit(
        UserStateError(errorMsg: errorMsg),
      );
    }, (userDto) {
      emit(UserStateSuccess(userDto: userDto));
    });
  }
}
