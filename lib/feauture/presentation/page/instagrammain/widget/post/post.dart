import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/post/comments.dart';
import 'package:instagram_test_app/feauture/presentation/page/instagrammain/widget/post/user_post.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';
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
            Assets.images.postimage.path,
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
                      ?  CustomSvgIcon(
                          assetName: Assets.icon.likenavigator,
                          width: 25,
                          height: 25,
                          color: Colors.red,
                        )
                      :  CustomSvgIcon(
                          assetName: Assets.icon.like,
                          // Assets.likeIcon,
                          width: 25,
                          height: 25,
                        ),
                ),
                IconButton(
                  onPressed: () {},
                  icon:  CustomSvgIcon(
                    assetName: Assets.icon.comment,
                    width: 25,
                    height: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon:  CustomSvgIcon(
                    assetName: Assets.icon.send,
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
                        :  CustomSvgIcon(
                            assetName: Assets.icon.save,
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
