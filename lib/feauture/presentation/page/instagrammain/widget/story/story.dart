import 'package:flutter/material.dart';
import 'package:instagram_test_app/gen/assets.gen.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      Assets.images.storyimage.path,
      Assets.images.storyimage1.path,
      Assets.images.storyimage2.path,
      Assets.images.storyimage3.path,
      Assets.images.storyimage4.path,
    ];
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(
              width: 0.1, color: const Color.fromARGB(255, 120, 119, 119))),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 400,
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return Stack(children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width: 80,
                        height: 90,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffFBAA47),
                              Color(0xffD91A46),
                              Color(0xffA60F93),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  imagePaths[index],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]);
// >>>>>>> 8f454cbd6793236b87bfc43c07d32377f8979ecd
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
