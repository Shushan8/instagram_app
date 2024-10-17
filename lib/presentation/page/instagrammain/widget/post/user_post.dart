import 'package:flutter/material.dart';
import 'package:instagram_test_app/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/presentation/core/ui/text_styles.dart';
import 'package:instagram_test_app/presentation/page/instagrammain/widget/story/story_widget.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.5, vertical: 8),
          child: Row(
            children: [
              StoryWidget(
                  image: Assets.images.postuserimage.path,
                  gradient: false,
                  width: 30,
                  height: 40, padin: 0,widthcont: 0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'joshua_l',
                          style: AppTypography.boldText13
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
                          style: AppTypography.bText11,
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
          icon: CustomSvgIcon(
            assetName: Assets.icon.more,
            width: 3,
            height: 5,
          ),
        )
      ],
    );
  }
}
