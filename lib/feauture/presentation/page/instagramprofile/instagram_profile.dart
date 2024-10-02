import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class InstagramProfile extends StatelessWidget {
  const InstagramProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50 ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(),
                Row(children: [
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
                ],),
                CustomSvgIcon(
                      assetName: Assets.icon.menu,
                      width: 25,
                      height: 25,
                    ),
              ],
            ),
          ),
          Row(children: [],),
          Column(children: [],),
        ],
      ),
    );
  }
}