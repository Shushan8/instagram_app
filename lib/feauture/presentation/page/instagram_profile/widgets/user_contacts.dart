import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/text_styles.dart';

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
        Text(
          'Jacob West',
          style: AppTypography.boldText12,
        ),
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
