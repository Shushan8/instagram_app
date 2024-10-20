import 'package:flutter/material.dart';
import 'package:instagram_test_app/presentation/core/ui/colors.dart';
import 'package:instagram_test_app/presentation/core/ui/text_styles.dart';
import 'package:instagram_test_app/presentation/page/instagram_main/widget/story/story_widget.dart';
import 'package:instagram_test_app/presentation/page/register/login_screen.dart';
import 'package:instagram_test_app/presentation/page/register/widgets/reg_elevatedbutton.dart';
import 'package:instagram_test_app/presentation/page/register/widgets/sign_up.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class LogInPageScreen extends StatelessWidget {
  const LogInPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50,
            ),
            SizedBox(
              child: Column(
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
                    height: 13,
                  ),
                  Text(
                    'Jacob_w',
                    style: AppTypography.boldText16,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 12, 32, 30),
                    child: RegElevatedbutton(
                      navFunctoun: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ));
                      },
                      backColor: AppColors.blue37,
                      buttonText: 'Log in',
                    ),
                  ),
                  Text(
                    'Switch accounts',
                    style: AppTypography.boldText14,
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account? ',
                      style: AppTypography.bText12,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return SignUp();
                          },
                        ));
                      },
                      child: Text(
                        'Sign up.',
                        style: AppTypography.boldText12,
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
