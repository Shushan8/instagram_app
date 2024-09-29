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
  bool isLiked = false;
  void liked() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const UserPost(),
        SizedBox(
          width: double.infinity,
          height: 375,
          child: Image.asset(
            Assets.postImage,
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: liked,
                  icon: isLiked
                      ? const Icon(
                          Icons.star_border_purple500_rounded) // --------
                      : const CustomSvgIcon(
                          assetName: Assets.likeIcon,
                          width: 25,
                          height: 25,
                        ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const CustomSvgIcon(
                    assetName: Assets.commentIcon,
                    width: 25,
                    height: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const CustomSvgIcon(
                    assetName: Assets.sendIcon,
                    width: 25,
                    height: 25,
                  ),
                ),
              ],
            ),
            const Row(
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
