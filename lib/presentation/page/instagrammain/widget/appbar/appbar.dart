import 'package:flutter/material.dart';
import 'package:instagram_test_app/presentation/core/ui/svg_icon.dart';

import 'package:instagram_test_app/gen/assets.gen.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomSvgIcon(
                assetName: Assets.icon.camera,
                width: 24,
                height: 22,
              ),
              Image.asset(
                Assets.images.instagramLogo.path,
                width: 105,
                height: 28,
              ),
              Row(
                children: [
                  CustomSvgIcon(
                    assetName: Assets.icon.tv,
                    width: 24,
                    height: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomSvgIcon(
                    assetName: Assets.icon.send,
                    width: 23,
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

    @override
    Size get preferredSize => Size.fromHeight(50);
}
