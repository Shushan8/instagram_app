import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/colors.dart';

class RegTextfiled extends StatelessWidget {
  const RegTextfiled({super.key, required this.labText, this.onChanged});
  final String labText;
  final void Function(String value)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
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
