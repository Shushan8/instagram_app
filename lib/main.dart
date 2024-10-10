import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/widget/bottomnavigationbar/bottomnavigationbar.dart';
import 'package:instagram_test_app/feauture/presentation/widget/bottomnavigationbar/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LogIn(),
    );
  }
}
