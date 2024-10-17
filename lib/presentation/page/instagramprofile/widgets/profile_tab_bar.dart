import 'package:flutter/material.dart';
import 'package:instagram_test_app/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class ProfileTabBar extends StatelessWidget {
  const ProfileTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      Assets.images.rectangle.path,
      Assets.images.rectangle1.path,
      Assets.images.rectangle2.path,
      Assets.images.rectangle3.path,
      Assets.images.videoPost.path,
      Assets.images.rectangle5.path,
      Assets.images.rectangle6.path,
      Assets.images.rectangle7.path,
      Assets.images.rectangle8.path,
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
                    padding: EdgeInsets.symmetric(vertical: 1),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 1,
                      ),
                      itemCount: imagePaths.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          child: Image.asset(
                            imagePaths[index],
                            fit: BoxFit.cover,
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
