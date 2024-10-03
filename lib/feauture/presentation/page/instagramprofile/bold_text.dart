import 'package:flutter/material.dart';
// <<<<<<< HEAD
import 'package:instagram_test_app/gen/fonts.gen.dart';
// =======
import 'package:instagram_test_app/feauture/presentation/core/ui/colors.dart';
// >>>>>>> 1d7cceeae37dd8a3a057a0a0d9fc8f9787886d34

class BoldText extends StatelessWidget {
  const BoldText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: AppColors.black26,
      ),
    );
  }
}
