import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/constant/assets.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSvgIcon(
              assetName: Assets.cameraIcon,
              width: 25,
              height: 25,
            ),
            Image.asset(
              Assets.logoImage,
            ),
            const Row(
              children: [
                CustomSvgIcon(
                  assetName: Assets.tvIcon,
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                CustomSvgIcon(
                  assetName: Assets.sendIcon,
                  width: 25,
                  height: 25,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
