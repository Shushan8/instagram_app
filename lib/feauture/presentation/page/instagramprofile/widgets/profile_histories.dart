import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/story/story_widget.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class ProfileHistorys extends StatelessWidget {
  const ProfileHistorys({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      Assets.images.storyimage.path,
      Assets.images.storyimage1.path,
      Assets.images.storyimage2.path,
      Assets.images.storyimage3.path,
      Assets.images.storyimage4.path,
    ];

    return SingleChildScrollView(
      child: Row(
        children: [
          SizedBox(
            height: 100,
            width: MediaQuery.sizeOf(context).width - 14,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return index == 0
                    ? Container(
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1),
                        ),
                        child: CustomSvgIcon(
                            assetName: Assets.icon.addStory,
                            width: 10,
                            height: 10),
                      )
                    : Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: StoryWidget(
                          image: imagePaths[index], 
                          gradient: true, 
                          width: 64, 
                          height: 64, padin: 2.5,widthcont: 2,),
                      ),
                    );
              },
            ),
          ),
        ],
      ),
    );
  }
}
