import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/post/user_photo_circle.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            children: [
              UserPhotoCircle(
                height: 35,
                width: 35,
                assetsImage:
                AssetImage(
                Assets.images.postuserimage.path,
              ),
                // Image.asset(Assets.images.postuserimage.path)
                //  AssetImage(
                //   ,
                // ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          assetName: Assets.icon.official,
                          width: 15,
                          height: 15,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Armenia,Erevan',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon:  CustomSvgIcon(
            assetName: Assets.icon.more,
            width: 3,
            height: 5,
          ),
        )
      ],
    );
  }
}
