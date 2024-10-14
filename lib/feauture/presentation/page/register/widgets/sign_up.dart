import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/blocs/basic_auth/basic_auth_bloc.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/blocs/basic_auth/basic_auth_event.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/login_screen.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/colors.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/text_styles.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/widgets/reg_elevatedbutton.dart';
import 'package:instagram_test_app/feauture/presentation/page/register/widgets/reg_textfiled.dart';
import 'package:instagram_test_app/lc.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BasicAuthBloc(lc()),
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  Assets.images.instagramLogo.path,
                  width: 180,
                  height: 50,
                  fit: BoxFit.contain,
                ),
                Text(
                  'Sign up to see photos and videos from your friends.',
                  style: AppTypography.boldText16,
                  textAlign: TextAlign.center,
                ),
                RegElevatedbutton(
                    navFunctoun: () {},
                    buttonText: 'Log in with Facebook',
                    backColor: AppColors.blue37),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('OR'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RegTextfiled(
                      onChanged: (value) => context.read<BasicAuthBloc>().add(
                            EmailChanged(value.toString()),
                          ),
                      labText: 'Mobile Number or Email',
                    ),
                    // RegTextfiled(

                    //   labText: 'Mobile Number or Email'),
                    SizedBox(
                      height: 12,
                    ),
                    RegTextfiled(
                      onChanged: (value) => context
                          .read<BasicAuthBloc>()
                          .add(PasswordChanged(value.toString())),
                      labText: 'Password',
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    RegTextfiled(labText: 'Full Name'),
                    SizedBox(
                      height: 12,
                    ),
                    RegTextfiled(labText: 'Username'),
                    SizedBox(
                      height: 12,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'People who use our service may have uploaded your contact information to Instagram.',
                            style: AppTypography.bText11,
                          ),
                          TextSpan(
                              text: ' Learn More',
                              style: AppTypography.bText12k)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'By signing up, you agree to our ',
                            style: AppTypography.bText12,
                          ),
                          TextSpan(
                            text: ' Terms',
                            style: AppTypography.bText12k,
                          ),
                          TextSpan(
                            text: ',',
                            style: AppTypography.bText12,
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: AppTypography.bText12k,
                          ),
                          TextSpan(
                            text: 'and',
                            style: AppTypography.bText12,
                          ),
                          TextSpan(
                            text: 'Cookies Policy .',
                            style: AppTypography.bText12k,
                          ),
                        ],
                      ),
                    ),
                    RegElevatedbutton(
                        navFunctoun: () =>
                            context.read<BasicAuthBloc>().add(FormSubmit()),
                        buttonText: 'Sign up',
                        backColor: AppColors.blue37),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account? ',
                          style: AppTypography.bText12,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) {
                                return LoginScreen();
                              },
                            ));
                          },
                          child: Text(
                            'Log in',
                            style: AppTypography.bText12b,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
