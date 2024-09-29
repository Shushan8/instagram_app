import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/appbar/appbar.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/post/post.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/story/story.dart';

class InstagramMain extends StatelessWidget {
  const InstagramMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Appbar(),
          const Story(),
          SingleChildScrollView(
            child: SizedBox(
              height: 570,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Post(),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
