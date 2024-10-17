import 'package:auto_route/auto_route.dart';
import 'package:instagram_test_app/presentation/page/register/login_screen.dart';
import 'package:instagram_test_app/presentation/page/register/sign_up_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

 @override
 List<AutoRoute> get routes => [
  AutoRoute(page: LoginRoute.page , path: '/'),
  
 ];
 
}
