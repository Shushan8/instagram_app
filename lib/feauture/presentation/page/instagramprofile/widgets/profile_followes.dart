import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagramprofile/bold_text.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class ProfileFollowes extends StatelessWidget {
  const ProfileFollowes({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 96,
          height: 96,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 3),
            color: Colors.white,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(Assets.images.postuserimage.path),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: const [
            BoldText(text: '54'),
            Text(
              'Posts',
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
        Column(
          children: const [
            BoldText(text: '834'),
            Text(
              'Folowers',
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
        Column(
          children: const [
            BoldText(text: '162'),
            Text(
              'Folowing',
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ],
    );
  }
}
