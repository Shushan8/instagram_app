import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_test_app/infrastructure/user/models/user.dart';
import 'package:fpdart/src/unit.dart';
import 'package:instagram_test_app/domain/user/i_user_repository.dart';

class UserRepositoryImpl implements IUserRepository {
  final firestore = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  @override
  Future<Either<String, Unit>> createUser({
    required String fullName,
    required String userName,
  }) async {
    final usersCollaction = firestore.collection('users');
    final String uid = auth.currentUser!.uid;
    UserDto userDto = UserDto(id: uid, fullName: fullName, userName: userName);
    try {
      // await users.set({
      //   'id': id,
      //   'fullName': fullName,
      //   'userName': userName,
      // });
      await usersCollaction.doc(uid).set(userDto.toJson());
      return Right(unit);
    } catch (e) {
      log('net created user ------------------------------ $e');
      return Left('Failed to add user');
    }
  }

  @override
  Future<Either<String, UserDto>> getUser({required String uid}) async {
    final userCollaction = firestore.collection('users');
    try {
      final DocumentSnapshot snapshot = await userCollaction.doc(uid).get();
      final userFields = snapshot.data() as Map<String, dynamic>;
      return Right(
        UserDto.fromJson(userFields),
      );
    } catch (e) {
      return Left('Failde to get User');
    }
  }
}
