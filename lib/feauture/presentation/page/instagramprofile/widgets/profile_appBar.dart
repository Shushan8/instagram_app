import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagramprofile/bold_text.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class ProfileAppbar extends StatelessWidget {
  const ProfileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomSvgIcon(
              assetName: Assets.icon.privateIcon,
              width: 9,
              height: 12,
            ),
            const SizedBox(
              width: 5,
            ),
            const BoldText(text: 'Jacob_w'),
            const SizedBox(
              width: 5,
            ),
            CustomSvgIcon(
              assetName: Assets.icon.accountsList,
              width: 11,
              height: 6,
            ),
          ],
        ),
        CustomSvgIcon(
          assetName: Assets.icon.menu,
          width: 21,
          height: 18,
        ),
      ],
    );
  }
}
