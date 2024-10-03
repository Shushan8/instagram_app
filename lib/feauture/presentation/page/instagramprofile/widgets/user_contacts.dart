import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagramprofile/bold_text.dart';

class UserContacts extends StatelessWidget {
  const UserContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BoldText(text: 'Jacob West'),
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
