import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_test_app/application/auth/auth_bloc.dart';
import 'package:instagram_test_app/application/auth/auth_event.dart';
import 'package:instagram_test_app/application/auth/auth_state.dart';
import 'package:instagram_test_app/presentation/page/register/login_screen.dart';
import 'package:instagram_test_app/presentation/widget/bottomnavigationbar/bottomnavigationbar.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';
import 'package:instagram_test_app/presentation/core/ui/colors.dart';
import 'package:instagram_test_app/presentation/core/ui/text_styles.dart';
import 'package:instagram_test_app/presentation/page/register/widgets/reg_elevatedbutton.dart';
import 'package:instagram_test_app/presentation/page/register/widgets/reg_textfiled.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          log('---------------------------$state');
          if (state is AuthStateSuccess) {
            print('User:: success');
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) => const BottomNavigationBarApp()),
                (route) => false);
          } else {
            print('-----------------------------');
          }
        },
        child: Padding(
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
                    navFunctoun: () =>
                        context.read<AuthBloc>().add(SignUpWithGoogle()),
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
                      controller: emailController,
                      labText: 'Mobile Number or Email',
                    ),
                    // RegTextfiled(

                    //   labText: 'Mobile Number or Email'),
                    SizedBox(
                      height: 12,
                    ),
                    RegTextfiled(
                      controller: passwordController,
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
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        if (state is AuthStateLoading) {
                          return CircularProgressIndicator();
                        }
                        return RegElevatedbutton(
                            navFunctoun: () {
                              if (emailController.text.isEmpty ||
                                  passwordController.text.isEmpty) {
                                return;
                              }
                              context.read<AuthBloc>().add(
                                    CreateUserEmailAndPassword(
                                        emailController.text,
                                        passwordController.text),
                                  );
                            },
                            buttonText: 'Sign up',
                            backColor: AppColors.blue37);
                      },
                    ),
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
