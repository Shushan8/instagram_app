import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/text_styles.dart';

class UserContacts extends StatelessWidget {
  const UserContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jacob West',
              style: AppTypography.boldText16,
            ),
            Text(
              'Digital goodies designer @pixsellz',
              style: TextStyle(fontSize: 13),
            ),
            Text(
              'Everything is designed.',
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ],
    );
  }
}
