import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class ProfileTabBar extends StatelessWidget {
  const ProfileTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: SingleChildScrollView(
        child: SizedBox(
          height: 200,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 0,
              bottom: TabBar(indicatorColor: Colors.black, tabs: <Widget>[
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
              ]),
            ),
            body: TabBarView(children: const <Widget>[
              Text('data'),
              Text('2455'),
            ]),
          ),
        ),
      ),
    );
  }
}
