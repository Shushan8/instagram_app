import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/constant/assets.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/instagram_main.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/post/user_photo_circle.dart';

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
    Text(
      'Index 4: School',
    ),
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
        items: const [
          BottomNavigationBarItem(
            icon: CustomSvgIcon(
              assetName: Assets.cameraIcon,
              width: 22,
              height: 24,
              
            ),
            activeIcon: CustomSvgIcon(
              assetName: Assets.homeIcon,
              width: 22,
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CustomSvgIcon(
              assetName: Assets.searchIcon,
              width: 22,
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CustomSvgIcon(
              assetName: Assets.addIcon,
              width: 22,
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CustomSvgIcon(
              assetName: Assets.likeIcon,
              width: 22,
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: UserPhotoCircle(height: 25, width: 25),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        
        onTap: _onItemTapped,
      ),
    );
  }
}
