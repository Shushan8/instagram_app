import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instagram_test_app/firebase_options.dart';
import 'package:instagram_test_app/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final appRouter = AppRouter();
   runApp(MyApp(appRouter: appRouter));
}

class MyApp extends StatelessWidget {
   MyApp({super.key, required this.appRouter});
  AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return   MaterialApp.router(
       routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      
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