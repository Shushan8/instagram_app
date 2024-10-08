import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/colors.dart';
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
        Stack(children: [
          SizedBox(
            width: double.infinity,
            height: 375,
            child: Image.asset(
              Assets.images.postimage.path,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.all(14),
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                    color: AppColors.black12,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  '1/3',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ]),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: liked,
                    icon: isLiked
                        ? CustomSvgIcon(
                            assetName: Assets.icon.likenavigator,
                            width: 25,
                            height: 25,
                            color: Colors.red,
                          )
                        : CustomSvgIcon(
                            assetName: Assets.icon.like,
                            // Assets.likeIcon,
                            width: 25,
                            height: 25,
                          ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: CustomSvgIcon(
                      assetName: Assets.icon.comment,
                      width: 25,
                      height: 25,
                    ),
                    
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: CustomSvgIcon(
                      assetName: Assets.icon.send,
                      width: 25,
                      height: 25,
                    ),
                  ),
                ],
              ),
              CustomSvgIcon(
                assetName: Assets.icon.moreb,
                width: 25,
                height: 25,
              ),
               SizedBox(
                    width: 15,
                  ),
              Row(
                children: [
                  IconButton(
                      onPressed: onSaved,
                      icon: isSaved
                          ? Icon(
                              Icons.turned_in,
                              size: 29,
                            )
                          : CustomSvgIcon(
                              assetName: Assets.icon.save,
                              width: 25,
                              height: 25,
                            )),
                 
                ],
              ),
            ],
          ),
        ),
        // const SizedBox(
        //   height: 15,
        // ),
        const Comments(),
      ],
    );
  }
}
