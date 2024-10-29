import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_test_app/application/user/bloc/user_bloc.dart';
import 'package:instagram_test_app/presentation/core/ui/text_styles.dart';

class UserContacts extends StatelessWidget {
  const UserContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        BlocBuilder<UserBloc, UserState>(builder: (context, state) {
          if (state is UserStateLoading) {
            return Text('-.-.-.-');
          }
          if (state is UserStateSuccess) {
            return Text(
              state.userDto.fullName,
              style: AppTypography.boldText12,
            );
          }
          if (state is UserStateError) {
            return Text(state.errorMsg);
          }
          return Text('---------------------------');
        }),
        // Text(
        //   'Jacob West',
        //   style: AppTypography.boldText12,
        // ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Digital goodies designer ',
                style: AppTypography.bText12,
              ),
              TextSpan(
                text: '@pixsellz',
                style: AppTypography.bText12k,
              ),
            ],
          ),
        ),
        Text(
          'Everything is designed.',
          style: AppTypography.bText13,
        ),
      ],
    );
  }
}
