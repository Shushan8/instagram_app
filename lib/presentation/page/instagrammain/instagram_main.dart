import 'package:flutter/material.dart';
import 'package:instagram_test_app/presentation/page/instagrammain/widget/appbar/appbar.dart';
import 'package:instagram_test_app/presentation/page/instagrammain/widget/post/post.dart';
import 'package:instagram_test_app/presentation/page/instagrammain/widget/story/story.dart';

class InstagramMain extends StatelessWidget {
  const InstagramMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Story(),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Post(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
