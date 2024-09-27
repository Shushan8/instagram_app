import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/widget/appbar/appbar.dart';

class InstagramMain extends StatelessWidget {
  const InstagramMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Appbar()
        ],
      ),
    );
  }
}