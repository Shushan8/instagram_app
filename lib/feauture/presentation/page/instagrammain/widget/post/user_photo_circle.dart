import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/constant/assets.dart';

class UserPhotoCircle extends StatelessWidget {
  const UserPhotoCircle({super.key, required this.height, required this.width});
//
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            Assets.postUserImage,
            // Путь к изображению
          ),
          fit: BoxFit.fill, // Подгонка изображения
        ),
      ),
    );
  }
}
