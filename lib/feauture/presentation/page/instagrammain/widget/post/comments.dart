import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/post/user_photo_circle.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(
            width: 15,
          ),
          Row(
            children: [
              UserPhotoCircle(
                height: 20,
                width: 20,
              ),
              SizedBox(width: 5,),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                        text: 'Liked by ',
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: 'craig_love ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(
                        text: 'and ',
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '44,686 others',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ],
                ),
              ),
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
      ),
    );
  }
}
