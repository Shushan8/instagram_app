import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class ProfileTabBar extends StatelessWidget {
  const ProfileTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      Assets.images.storyimage.path,
      Assets.images.storyimage1.path,
      Assets.images.storyimage2.path,
      Assets.images.storyimage3.path,
      Assets.images.storyimage4.path,
      Assets.images.storyimage.path,
      Assets.images.storyimage.path,
      Assets.images.storyimage1.path,
      Assets.images.storyimage2.path,
      Assets.images.storyimage3.path,
      Assets.images.storyimage4.path,
      Assets.images.storyimage.path,
      Assets.images.storyimage.path,
      Assets.images.storyimage1.path,
      Assets.images.storyimage2.path,
      Assets.images.storyimage3.path,
      Assets.images.storyimage4.path,
      Assets.images.storyimage.path,
      Assets.images.storyimage.path,
      Assets.images.storyimage1.path,
      Assets.images.storyimage2.path,
      Assets.images.storyimage3.path,
      Assets.images.storyimage4.path,
      Assets.images.storyimage.path,
      Assets.images.storyimage.path,
      Assets.images.storyimage1.path,
      Assets.images.storyimage2.path,
      Assets.images.storyimage3.path,
      Assets.images.storyimage4.path,
      Assets.images.storyimage.path,
      Assets.images.storyimage.path,
      Assets.images.storyimage1.path,
      Assets.images.storyimage2.path,
      Assets.images.storyimage3.path,
      Assets.images.storyimage4.path,
      Assets.images.storyimage.path,
    ];

    double height =
        ((imagePaths.length / 3) * 124) + 32 * (imagePaths.length / 3) + 20;

    return DefaultTabController(
      length: 2,
      child: SizedBox(
        width: double.infinity,
        height: height,
        //  (imagePaths.length / 3) * 124,
        child: Column(
          children: [
            Container(
              child: TabBar(
                tabs: [
                  SizedBox(
                    width: double.infinity / 2,
                    child: Tab(
                      icon: CustomSvgIcon(
                        assetName: Assets.icon.gridIcon,
                        width: 23,
                        height: 23,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity / 2,
                    child: Tab(
                      icon: CustomSvgIcon(
                        assetName: Assets.icon.tagsIcon,
                        width: 23,
                        height: 23,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                      ),
                      itemCount: imagePaths.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          child: Image.asset(
                            width: 124,
                            height: 124,
                            imagePaths[index],
                            fit: BoxFit.contain,
                          ),
                        );
                      }),
                  Text('2455'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
