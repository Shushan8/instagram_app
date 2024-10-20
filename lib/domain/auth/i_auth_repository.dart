import 'package:fpdart/fpdart.dart';

abstract interface class IAuthRepository {
  Future<Either<String, Unit>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });
}
