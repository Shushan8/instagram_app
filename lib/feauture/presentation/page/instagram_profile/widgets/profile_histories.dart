import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/text_styles.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagram_main/widget/story/story_widget.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class ProfileHistorys extends StatelessWidget {
  const ProfileHistorys({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      Assets.images.rectangle.path,
      Assets.images.storyimage.path,
      Assets.images.storyimage1.path,
      Assets.images.storyimage2.path,
    ];
    final List<String> textStory = [
      'Your Story',
      'Friends',
      'Sport ',
      'Design ',
    ];

    return SingleChildScrollView(
      child: Row(
        children: [
          SizedBox(
            height: 120,
            width: MediaQuery.sizeOf(context).width - 14,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: imagePaths.length,
              separatorBuilder: (
                BuildContext context,
                int index,
              ) =>
                  const Divider(
                endIndent: 15,
              ),
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return index == 0
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 1, color: Color(0xffC7C7CC)),
                            ),
                            child: CustomSvgIcon(
                              assetName: Assets.icon.addStory,
                              width: 10,
                              height: 10,
                            ),
                          ),
                          Text(
                            'New',
                            style: AppTypography.bText12,
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StoryWidget(
                            width: 62,
                            height: 62,
                            image: imagePaths[index],
                            gradient: false,
                            padin: 1,
                            widthcont: 4,
                          ),
                          Text(
                            textStory[index],
                            style: AppTypography.bText12,
                          ),
                        ],
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
