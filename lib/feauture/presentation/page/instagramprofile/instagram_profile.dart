import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/story/story.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/story/story_widget.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagramprofile/bold_text.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class InstagramProfile extends StatelessWidget {
  const InstagramProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      Assets.images.storyimage.path,
      Assets.images.storyimage1.path,
      Assets.images.storyimage2.path,
      Assets.images.storyimage3.path,
      Assets.images.storyimage4.path,
    ];

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(),
                Row(
                  children: [
                    CustomSvgIcon(
                      assetName: Assets.icon.privateIcon,
                      width: 25,
                      height: 25,
                    ),
                    Text('data'),
                    CustomSvgIcon(
                      assetName: Assets.icon.accountsList,
                      width: 25,
                      height: 25,
                    ),
                  ],
                ),
                CustomSvgIcon(
                  assetName: Assets.icon.menu,
                  width: 21,
                  height: 18,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 1, color: Color.fromARGB(255, 114, 113, 112)),
                  gradient: LinearGradient(
                    colors: const [
                      Color.fromARGB(255, 239, 236, 233),
                      Color.fromARGB(255, 234, 228, 229),
                      Color.fromARGB(255, 215, 207, 214),
                    ], // Градиентные цвета
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(Assets.images.postuserimage.path),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: const [
                  BoldText(text: '54'),
                  Text(
                    'Posts',
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: const [
                  BoldText(text: '834'),
                  Text(
                    'Folowers',
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
              Column(
                children: const [
                  BoldText(text: '162'),
                  Text(
                    'Folowing',
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoldText(text: 'Jacob West'),
                    Text(
                      'Digital goodies designer @pixsellz',
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      'Everything is designed.',
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 25.0, right: 25, top: 10),
            child: ElevatedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {},
              child: BoldText(text: 'Edit Profile'),
            ),
          ),
          SingleChildScrollView(
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, border: Border.all(width: 1)),
                  child: SizedBox(
                    height: 25,
                    width: 25,
                    child: CustomSvgIcon(
                        assetName: Assets.icon.add, width: 25, height: 25),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagePaths.length,
                    itemBuilder: (context, index) {
                      return StoryWidget(
                        width: 60,
                        height: 60,
                          image: imagePaths[index], gradient: true);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
