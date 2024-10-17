import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/text_styles.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class ProfileAppbar extends StatelessWidget {
  const ProfileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomSvgIcon(
              assetName: Assets.icon.privateIcon,
              width: 9,
              height: 12,
            ),
            const SizedBox(
              width:6,
            ),
            Text(
              'Jacob_w',
              style: AppTypography.boldText16,
            ),
            const SizedBox(
              width: 6,
            ),
            CustomSvgIcon(
              assetName: Assets.icon.accountsList,
              width: 11,
              height: 6,
            ),
          ],
        ),
      ],
    );
  }
}
