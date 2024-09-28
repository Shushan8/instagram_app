import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/constant/assets.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/post/comments.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/post/user_post.dart';

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
        const UserPost(),
        Container(
          width: double.infinity,
          height: 375,
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
