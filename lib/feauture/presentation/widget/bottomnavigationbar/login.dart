import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/text_styles.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/story/story_widget.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 49,
                  width: 182,
                  child: Image.asset(
                    Assets.images.instagramLogo.path,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 52),
                  child: StoryWidget(
                    image: Assets.images.storyimage4.path,
                    gradient: false,
                    width: 85,
                    height: 85,
                    padin: 0,
                    widthcont: 0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Jacob_w',
                  style: AppTypography.boldText16,
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Edit Profile',
                        style: AppTypography.boldText16,
                      ),
                    ),
                  ),
                ),
                Text('Switch accounts'),
              ],
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                      text: 'Don’t have an account? ',
                      style: TextStyle(color: Colors.black)),
                  TextSpan(
                    text: 'Sign up.',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
