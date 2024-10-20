import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_test_app/application/auth/auth_event.dart';
import 'package:instagram_test_app/presentation/core/ui/colors.dart';
import 'package:instagram_test_app/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/presentation/core/ui/text_styles.dart';
import 'package:instagram_test_app/application/auth/auth_bloc.dart';
import 'package:instagram_test_app/application/auth/auth_state.dart';
import 'package:instagram_test_app/presentation/page/register/widgets/reg_elevatedbutton.dart';
import 'package:instagram_test_app/presentation/page/register/widgets/reg_textfiled.dart';
import 'package:instagram_test_app/presentation/page/register/widgets/sign_up.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';
import 'package:instagram_test_app/presentation/widget/bottomnavigationbar/bottomnavigationbar.dart';
// @RoutePage()

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthStateSuccess) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return BottomNavigationBarApp();
            },
          ));
        }
      },
      child: Scaffold(
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
                  BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
                    return RegTextfiled(
                      labText: 'Name',
                      controller: emailController,
                    );
                  }),
                  SizedBox(
                    height: 12,
                  ),
                  BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
                    return RegTextfiled(
                      labText: 'Password',
                      controller: passwordController,
                    );
                  }),
                  SizedBox(
                    height: 19,
                  ),
                  Text(
                    'Forgot password?',
                    style: AppTypography.bText12b,
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
                                  LoginWithEmailAndPassword(
                                      emailController.text,
                                      passwordController.text),
                                );
                          },
                          buttonText: 'Log in',
                          backColor: AppColors.blue37b);
                    },
                  ),
                  // BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
                  //   return RegElevatedbutton(
                  //       navFunctoun: () {
                  //         // Navigator.of(context).pop(
                  //         //   MaterialPageRoute(
                  //         //     builder: (context) {
                  //         //       return LoginScreen();
                  //         //     },
                  //         //   ),
                  //         // );

                  //         if (true) {}
                  //       },
                  //       buttonText: 'Log in',
                  //       backColor: AppColors.blue37b);
                  // }),
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
                    children: const [
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
                        onTap: () {
                          // context.pushRoute(SignUp() as PageRouteInfo );
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return SignUp();
                            },
                          ));
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
      ),
    );
  }
}
