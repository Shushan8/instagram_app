import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_test_app/application/auth/auth_bloc.dart';
import 'package:instagram_test_app/application/user/bloc/user_bloc.dart';
import 'package:instagram_test_app/gen/router/router.dart';
import 'package:instagram_test_app/firebase_options.dart';
import 'package:instagram_test_app/lc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initializeDependencies();
  // final appRouter = AppRouter();
  final FirebaseFirestore db = FirebaseFirestore.instance;
  final CollectionReference users = db.collection('users');
  final auth = FirebaseAuth.instance.currentUser!.uid;
  final DocumentSnapshot snapshot = await users.doc('$auth').get();
  final userFields = snapshot.data();
  log(userFields.toString());
  runApp(MyApp(
      // appRouter: appRouter
      ));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    // required this.appRouter
  });
  // AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    log('-----------------------000000');

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(lc()),
        ),
        BlocProvider(
          create: (context) => UserBloc(lc()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter().config(),
      ),
    );
  }
}
