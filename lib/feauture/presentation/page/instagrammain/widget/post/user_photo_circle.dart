import 'package:flutter/material.dart';

class UserPhotoCircle extends StatelessWidget {
  const UserPhotoCircle(
      {super.key,
      required this.height,
      required this.width,
      required this.assetsImage});
//
  final double width;
  final double height;
  final ImageProvider<Object> assetsImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: assetsImage,
          fit: BoxFit.fill, // Подгонка изображения
        ),
      ),
    );
  }
}
