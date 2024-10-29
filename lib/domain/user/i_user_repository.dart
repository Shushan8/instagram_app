import 'package:fpdart/fpdart.dart';
import 'package:instagram_test_app/infrastructure/user/models/user.dart';

abstract interface class IUserRepository {
  Future<Either<String, Unit>> createUser({
    required String fullName,
    required String userName,
  });

  Future<Either<String, UserDto>> getUser({
    required String uid,
  });
}
