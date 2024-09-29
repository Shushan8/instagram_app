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
  bool isSaved = false;
  void liked() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  void onSaved() {
    setState(() {
      isSaved = !isSaved;
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
                      ? const CustomSvgIcon(
                          assetName: Assets.likeNavigatorIcon,
                          width: 25,
                          height: 25,
                          color: Colors.red,
                        )
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
            Row(
              children: [
                IconButton(
                    onPressed: onSaved,
                    icon: isSaved
                        ? const Icon(Icons.save)
                        : const CustomSvgIcon(
                            assetName: Assets.saveIcon,
                            width: 25,
                            height: 25,
                          )),
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
