import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/story/story_widget.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagramprofile/bold_text.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagramprofile/widgets/profile_appBar.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagramprofile/widgets/profile_followes.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagramprofile/widgets/profile_histories.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagramprofile/widgets/profile_tab_bar.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagramprofile/widgets/user_contacts.dart';

class InstagramProfile extends StatelessWidget {
  const InstagramProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(

                  // width: double.infinity,
                  // height: 100,
                  // child: ListView.builder(
                  //   scrollDirection: Axis.horizontal,
                  //   itemCount: imagePaths.length,
                  //   itemBuilder: (context, index) {
                  //     return StoryWidget(
                  //       width: 60,
                  //       height: 60,
                  //         image: imagePaths[index], gradient: true);
                  //   },

                  height: 40,
                ),
                ProfileAppbar(),
                ProfileFollowes(),
                UserContacts(),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    child: BoldText(text: 'Edit Profile'),
                  ),
                ),
                ProfileHistorys(),
              ],
            ),
          ),
          Divider(
            color: const Color.fromARGB(255, 107, 106, 106),
            height: 0.2,
          ),
          ProfileTabBar(),
        ],
      ),
    );
  }
}
