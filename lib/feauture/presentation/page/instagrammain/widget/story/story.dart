import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/constant/assets.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/story/story_widget.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      Assets.storyImage,
      Assets.storyImage1,
      Assets.storyImage2,
      Assets.storyImage3,
      Assets.storyImage4,
    ];
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(
              width: 0.1, color: const Color.fromARGB(255, 120, 119, 119))),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 400,
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return StoryWidget(image: imagePaths[index], gradient: false);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
