import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';

import 'package:instagram_test_app/gen/assets.gen.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSvgIcon(
                assetName: Assets.icon.add,
                width: 25,
                height: 25,
              ),
              Image.asset(
                Assets.images.instagramLogo.path,
              ),
              Row(
                children: [
                  CustomSvgIcon(
                    assetName: Assets.icon.tv,
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomSvgIcon(
                    assetName: Assets.icon.send,
                    width: 25,
                    height: 25,
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
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
