import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/constant/assets.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/post/user_photo_circle.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            SizedBox(
              width: 15,
            ),
            UserPhotoCircle(
              height: 35,
              width: 35,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'joshua_l',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CustomSvgIcon(
                      assetName: Assets.officialIcon,
                      width: 15,
                      height: 15,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Armenia,Erevan',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const CustomSvgIcon(
            assetName: Assets.moreIcon,
            width: 3,
            height: 5,
          ),
        )
      ],
    );
  }
}
