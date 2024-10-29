import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:instagram_test_app/lc.dart';
import 'package:instagram_test_app/presentation/page/register/login_or_signup_screen.dart';
import 'package:instagram_test_app/presentation/widget/bottomnavigationbar/bottomnavigationbar.dart';
import 'package:instagram_test_app/repo/auth_repo/auth_repo.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isLoggedIn = lc<AuthRepo>().checkIfUserSignedIn();
    return MaterialApp(
      home: isLoggedIn ? BottomNavigationBarApp() : LogInOrSignUp(),
    );
  }
}
