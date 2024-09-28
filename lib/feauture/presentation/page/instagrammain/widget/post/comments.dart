import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/constant/assets.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/post/user_photo_circle.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: 15,
        ),
        const Row(
          children: [
            SizedBox(
              width: 15,
            ),
            UserPhotoCircle(
              height: 20,
              width: 20,
            ),
            Text('Liked by User and 44000 other'),
          ],
        ),
        RichText(
          text: const TextSpan(children: [
            TextSpan(
              text: 'joshua_l',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            TextSpan(
                text:
                    'joshua_l The game in Japan was amazing and I want to share some photos',
                style: TextStyle(color: Colors.black)),
          ]),
        ),
      ],
    );
  }
}
