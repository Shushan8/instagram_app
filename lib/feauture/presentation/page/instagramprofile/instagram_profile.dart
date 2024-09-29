import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/constant/assets.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';

class InstagramProfile extends StatelessWidget {
  const InstagramProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const   Scaffold(
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
                      assetName: Assets.privateIcon,
                      width: 25,
                      height: 25,
                    ),
                    Text('data'),
                    CustomSvgIcon(
                      assetName: Assets.accountsListIcon,
                      width: 25,
                      height: 25,
                    ),
                ],),
                CustomSvgIcon(
                      assetName: Assets.menuIcon,
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