import 'package:fpdart/fpdart.dart';

abstract interface class IUserRepository {
  Future<Either<String, Unit>> createUser({
    required String fullName,
    required String userName,
  });
}
