import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/text_styles.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagram_main/widget/story/story_widget.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                StoryWidget(
                  image: Assets.images.storyimage4.path,
                  gradient: false,
                  width: 20,
                  height: 30,
                  padin: 0,
                  widthcont: 0,
                ),
                SizedBox(
                  width: 5,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Liked by ',
                        style: AppTypography.bText13,
                      ),
                      TextSpan(
                        text: 'craig_love ',
                        style: AppTypography.boldText13,
                      ),
                      TextSpan(
                        text: 'and ',
                        style: AppTypography.bText13,
                      ),
                      TextSpan(
                        text: '44,686 others',
                        style: AppTypography.boldText13,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(text: 'joshua_l ', style: AppTypography.boldText13),
                TextSpan(
                    text:
                        'The game in Japan was amazing and I want to share some photos',
                    style: AppTypography.bText13),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
