import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/colors.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/text_styles.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/widgets/reg_elevatedbutton.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/widgets/reg_textfiled.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/widgets/sign_up.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';
@RoutePage()

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              Assets.images.instagramLogo.path,
              width: 180,
              height: 50,
              fit: BoxFit.contain,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RegTextfiled(labText: 'Name'),
                SizedBox(
                  height: 12,
                ),
                RegTextfiled(labText: 'Password'),
                SizedBox(
                  height: 19,
                ),
                Text(
                  'Forgot password?',
                  style: AppTypography.bText12b,
                ),
                RegElevatedbutton(
                    navFunctoun: () {
                      Navigator.of(context).pop(
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    },
                    buttonText: 'Log in',
                    backColor: AppColors.blue37b),
                SizedBox(
                  height: 37,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSvgIcon(
                        assetName: Assets.icon.facebookk,
                        width: 17,
                        height: 17),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Log in with Facebook',
                      style: AppTypography.boldText14,
                    ),
                  ],
                ),
                SizedBox(
                  height: 41,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:const [
                    Text('OR'),
                  ],
                ),
                SizedBox(
                  height: 41,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account? ',
                      style: AppTypography.bText12,
                    ),
                    InkWell(
                      onTap: (){
                        // context.pushRoute(SignUp() as PageRouteInfo );
                         Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                            return SignUp();
                          },));
                      },
                      child: Text(
                        'Sign up.',
                        style: AppTypography.bText12b,
                      ),
                    )
                   
                  ],
                )
              ],
            ),
            Text('data')
          ],
        ),
      ),
    );
  }
}
