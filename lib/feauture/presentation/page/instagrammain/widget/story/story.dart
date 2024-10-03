import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/story/story_widget.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      Assets.images.storyimage.path,
      Assets.images.storyimage1.path,
      Assets.images.storyimage2.path,
      Assets.images.storyimage3.path,
      Assets.images.storyimage4.path,
    ];
    final List<String> textStory = [
      'Your Story',
      'karennne',
      'zackjohn',
      'kieron_d',
      'craig_love',
    ];
    return Container(
      width: double.infinity,
      height: 98,
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.33,
          color: const Color(0xff3C3C43),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
                child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: imagePaths.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    StoryWidget(
                      width: 70,
                      height: 65,
                      image: imagePaths[index],
                      gradient: true,
                    ),
                    Text(textStory[index]),
                  ],
                );
              },
            )
                //  ListView.builder(
                //   scrollDirection: Axis.horizontal,
                //   itemCount: imagePaths.length,
                //   itemBuilder: (context, index) {
                //     return Column(
                //       children: [
                //         StoryWidget(
                //           width: 80,
                //           height: 70,
                //           image: imagePaths[index],
                //           gradient: true,

                //         ),
                //         Text('data'),
                //       ],
                //     );
                //   },
                // ),
                ),
          ],
        ),
      ),
    );
  }
}
