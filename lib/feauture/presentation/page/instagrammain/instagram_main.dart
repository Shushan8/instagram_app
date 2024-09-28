import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/appbar/appbar.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/post/post.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/story/story.dart';

class InstagramMain extends StatelessWidget {
  const InstagramMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Appbar(),
            Story(),
            Post(),
          ],
        ),
      ),
    );
  }
}
