import 'package:flutter/material.dart';
import 'package:instagram_test_app/presentation/core/ui/colors.dart';

class RegTextfiled extends StatelessWidget {
  const RegTextfiled({super.key, required this.labText, this.controller});
  final String labText;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
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
