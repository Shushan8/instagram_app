import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/constant/assets.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSvgIcon(
              assetName: Assets.cameraIcon,
              width: 25,
              height: 25,
            ),
            const SizedBox(
              width: 90,
            ),
            Image.asset(
              Assets.logoImage,
            ),
            const SizedBox(
              width: 70,
            ),
            const CustomSvgIcon(
              assetName: Assets.tvIcon,
              width: 25,
              height: 25,
            ),
            const SizedBox(
              width: 20,
            ),
            const CustomSvgIcon(
              assetName: Assets.sendIcon,
              width: 25,
              height: 25,
            ),
            const SizedBox(
              width: 30,
            )
          ],
        ),
      ],
    );
  }
}
