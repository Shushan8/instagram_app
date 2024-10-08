import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/story/story_widget.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          // const SizedBox(
          //   width: 5,
          // ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                StoryWidget(
                  image: Assets.images.storyimage4.path,
                   gradient: false,
                    width: 20, height: 30, padin: 0,widthcont: 0,),
                SizedBox(
                  width: 5,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                          text: 'Liked by ',
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                        text: 'craig_love ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                          text: 'and ', style: TextStyle(color: Colors.black)),
                      TextSpan(
                        text: '44,686 others',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
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
              text: const TextSpan(children: [
                TextSpan(
                  text: 'joshua_l ',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
                TextSpan(
                    text:
                        'The game in Japan was amazing and I want to share some photos',
                    style: TextStyle(color: Colors.black, height: 1.5)),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
