import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/constant/assets.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/post/comments.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Image.asset(
                    Assets.postUserImage,
                    fit: BoxFit.cover,
                  ),
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        Text('data'),
                        Icon(Icons.add),
                      ],
                    ),
                    Text('data,data'),
                  ],
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.access_time),
            )
          ],
        ),
        Container(
          width: double.infinity,
          height: 350,
          child: Image.asset(
            Assets.postImage,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                CustomSvgIcon(
                  assetName: Assets.likeIcon,
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                CustomSvgIcon(
                  assetName: Assets.commentIcon,
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                CustomSvgIcon(
                  assetName: Assets.sendIcon,
                  width: 25,
                  height: 25,
                ),
              ],
            ),
            Row(
              children: [
                CustomSvgIcon(
                  assetName: Assets.saveIcon,
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Comments(),
      ],
    );
  }
}
