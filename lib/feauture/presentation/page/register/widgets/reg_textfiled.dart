import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/colors.dart';

class RegTextfiled extends StatelessWidget {
  const RegTextfiled({super.key, required this.labText});
  final String labText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
          width: 0.5,
          color: AppColors.whitef,
        )),
        labelText: labText,
      ),
    );
  }
}
