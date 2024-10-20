import 'package:get_it/get_it.dart';
import 'package:instagram_test_app/application/auth/auth_bloc.dart';
import 'package:instagram_test_app/domain/auth/i_auth_repository.dart';
import 'package:instagram_test_app/infrastructure/auth/auth_repository_impl.dart';
import 'package:instagram_test_app/repo/auth_repo/auth_repo.dart';

final lc = GetIt.instance;
Future<void> initializeDependencies() async {
  lc.registerSingleton(
    AuthRepo(),
  );
  lc.registerSingleton<IAuthRepository>(
    AuthRepositoryImpl(),
  );
  lc.registerLazySingleton<AuthBloc>(
    () => AuthBloc(
      lc(),
    ),
  );
}
