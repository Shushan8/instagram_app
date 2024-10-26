import 'package:get_it/get_it.dart';
import 'package:instagram_test_app/application/auth/auth_bloc.dart';
import 'package:instagram_test_app/application/user/bloc/user_bloc.dart';
import 'package:instagram_test_app/domain/auth/i_auth_repository.dart';
import 'package:instagram_test_app/domain/user/i_user_repository.dart';
import 'package:instagram_test_app/infrastructure/auth/auth_repository_impl.dart';
import 'package:instagram_test_app/infrastructure/user/user_repository_impl.dart';
import 'package:instagram_test_app/repo/auth_repo/auth_repo.dart';

final lc = GetIt.instance;
Future<void> initializeDependencies() async {
  lc.registerSingleton(
    AuthRepo(),
  );
  lc.registerSingleton<IAuthRepository>(
    AuthRepositoryImpl(),
  );

  lc.registerSingleton<IUserRepository>(
    UserRepositoryImpl(),
  );
  lc.registerLazySingleton<AuthBloc>(
    () => AuthBloc(
      lc(),
    ),
  );
  lc.registerLazySingleton<UserBloc>(
    () => UserBloc(
      lc(),
    ),
  );
}
