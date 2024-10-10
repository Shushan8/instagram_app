import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/colors.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/text_styles.dart';
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
      appBar: AppBar(
        title: ProfileAppbar(),
       
        centerTitle: true,
      ),
      // endDrawer: ProfailMenu(),
       
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  ProfileFollowes(),
                  UserContacts(),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      style: OutlinedButton.styleFrom(
                        
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                        side: BorderSide(color:  AppColors.grey3c, width: 1,),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Edit Profile',
                        style: AppTypography.boldText13,
                      ),
                    ),
                  ),
                 
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 14),
               child: ProfileHistorys(),
             ),
            Divider(
              color: AppColors.grey3c,
              height: 0.2,
            ),
            ProfileTabBar()
          ],
        ),
      ),
    );
  }
}
