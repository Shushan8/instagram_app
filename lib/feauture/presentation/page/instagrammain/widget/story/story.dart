import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/text_styles.dart';
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
      Assets.images.storyimage1.path,
    ];
    final List<String> textStory = [
      'Your Story',
      'karennne',
      'zackjohn',
      'kieron_d',
      'craig_love',
      'zackjohn',
    ];
    return Container(
      padding: EdgeInsets.only(top: 9 , bottom: 4 ,left: 10),
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(color: Color(0xff3C3C43), width: 0.33),
            bottom: BorderSide(color: Color(0xff3C3C43), width: 0.33)),
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
                  const Divider(endIndent: 15,),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    StoryWidget(
                      width: 70,
                      height: 69,
                      image: imagePaths[index],
                      gradient: true,
                       padin: 2.5,widthcont: 2,
                    ),
                    Text(textStory[index], style: AppTypography.bText12,),
                  ],
                );
              },
            )
               
                ),
          ],
        ),
      ),
    );
  }
}
