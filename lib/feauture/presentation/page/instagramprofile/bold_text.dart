import 'package:flutter/material.dart';
import 'package:instagram_test_app/gen/fonts.gen.dart';

class BoldText extends StatelessWidget {
  const BoldText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: FontFamily.sfPro,
          fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
    );
  }
}
