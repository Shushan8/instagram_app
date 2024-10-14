import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/blocs/basic_auth/basic_auth_bloc.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/login.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/login_screen.dart';
import 'package:instagram_test_app/feauture/presentation/widget/bottomnavigationbar/bottomnavigationbar.dart';
import 'package:instagram_test_app/firebase_options.dart';
import 'package:instagram_test_app/lc.dart';
import 'package:instagram_test_app/repo/auth_repo/auth_repo.dart';
import 'package:instagram_test_app/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initializeDependencies();
  // final appRouter = AppRouter();

  runApp(MyApp(
      // appRouter: appRouter
      ));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({
    super.key,
    // required this.appRouter
  });
  // AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => BasicAuthBloc(lc()),
        child: MaterialApp(
          home: lc<AuthRepo>().checkIfUserSignedIn()
              ? BottomNavigationBarApp()
              : LoginScreen(),
        )

        // child: MaterialApp.router(
        //   routerDelegate: appRouter.delegate(),
        //   routeInformationParser: appRouter.defaultRouteParser(),
        // ),
        );
  }
}
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:instagram_test_app/firebase_options.dart';
// import 'package:instagram_test_app/router/router.dart';


// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions().currentPlatform,
//   );
//   final appRouter = AppRouter();
//   runApp(MyApp(appRouter: appRouter));
// }

// class MyApp extends StatelessWidget {
//   final AppRouter appRouter;

//   MyApp({Key? key, required this.appRouter}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       routerDelegate: appRouter.delegate(),
//       routeInformationParser: appRouter.defaultRouteParser(),
//     );
//   }
// }