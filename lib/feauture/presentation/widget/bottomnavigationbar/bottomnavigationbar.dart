import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagram_main/instagram_main.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagram_main/widget/story/story_widget.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagram_profile/instagram_profile.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class BottomNavigationBarApp extends StatelessWidget {
  const BottomNavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    InstagramMain(),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 3: School',
    ),
    InstagramProfile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: CustomSvgIcon(
              assetName: Assets.icon.camera,
              width: 22,
              height: 24,
            ),
            activeIcon: CustomSvgIcon(
              assetName: Assets.icon.home,
              width: 22,
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CustomSvgIcon(
              assetName: Assets.icon.search,
              width: 22,
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CustomSvgIcon(
              assetName: Assets.icon.add,
              width: 22,
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CustomSvgIcon(
              assetName: Assets.icon.like,
              width: 22,
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: StoryWidget(
              image: Assets.images.storyimage.path,
              gradient: false,
              width: 25,
              height: 30,
              padin: 0,
              widthcont: 0,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
