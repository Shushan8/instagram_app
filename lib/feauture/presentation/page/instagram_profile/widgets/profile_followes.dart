import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/text_styles.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagram_main/widget/story/story_widget.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class ProfileFollowes extends StatelessWidget {
  const ProfileFollowes({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StoryWidget(
          image: Assets.images.storyimage.path,
          gradient: false,
          width: 90,
          height: 90,
          widthcont: 5,
          padin: 1,
        ),
        Column(
          children: [
            Text(
              '54',
              style: AppTypography.boldText16,
            ),
            Text(
              'Posts',
              style: AppTypography.bText13,
            ),
          ],
        ),
        Column(
          children: [
            Text(
              '834',
              style: AppTypography.boldText16,
            ),
            Text(
              'Folowers',
              style: AppTypography.bText13,
            ),
          ],
        ),
        Column(
          children: [
            Text(
              '162',
              style: AppTypography.boldText16,
            ),
            Text(
              'Folowing',
              style: AppTypography.bText13,
            ),
          ],
        ),
      ],
    );
  }
}
