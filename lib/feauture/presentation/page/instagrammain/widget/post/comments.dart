import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/constant/assets.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 15,
        ),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.asset(
                Assets.postUserImage,
                fit: BoxFit.cover,
              ),
            ),
            const Text('Liked by User and 44000 other'),
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
