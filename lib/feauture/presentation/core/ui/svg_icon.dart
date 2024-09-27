import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgIcon extends StatelessWidget {
  final String assetName;
  final Color? color;
  final double width;
  final double height;

  const CustomSvgIcon({
    Key? key,
    required this.assetName, 
    this.color,
    required this.width ,
    required this.height ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      color: color,
      width: width,
      height: height,
    );
  }
}
