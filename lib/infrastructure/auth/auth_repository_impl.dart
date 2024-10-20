import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:instagram_test_app/domain/auth/i_auth_repository.dart';

class AuthRepositoryImpl implements IAuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<Either<String, Unit>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return Right(unit);
    } on FirebaseAuthException catch (e) {
      String errorMsg;
      if (e.code == "weak-password") {
        errorMsg = 'Passord is too weak';
      } else if (e.code == "email-already-in-use") {
        errorMsg = 'Email already in use';
      } else {
        errorMsg = e.code;
      }
      return Left(errorMsg);
    } catch (e) {
      return Left('Feiled to sign up');
    }
  }

  @override
  Future<Either<String, Unit>> signUpWithGoogle() async {
    try {
      final googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) return Left('Google user is null');
      final googleAuth = await googleUser.authentication;
      final creds = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      print('creds :: ${creds.accessToken}');
      await _auth.signInWithCredential(creds);
      return Right(unit);
    } catch (e) {
      log(e.toString());
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, Unit>> login(
      {required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(unit);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
