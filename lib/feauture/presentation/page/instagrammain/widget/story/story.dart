import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/constant/assets.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      Assets.storyImage,
      Assets.storyImage1,
      Assets.storyImage2,
      Assets.storyImage3,
      Assets.storyImage4,
    ];
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(
              width: 0.1, color: const Color.fromARGB(255, 120, 119, 119))),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Горизонтальная прокрутка
        child: Row(
          children: [
            Container(
              // Высота ListView
              width: 400, // Ширина ListView
              height: 100, // Высота ListView
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Горизонтальный ListView
                itemCount: imagePaths.length, // Количество элементов
                itemBuilder: (context, index) {
                  return Stack(children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width: 80, // Диаметр круга
                        height: 90,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffFBAA47),
                              Color(0xffD91A46),
                              Color(0xffA60F93),
                            ], // Градиентные цвета
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(
                              4.0), // Толщина градиентной рамки
                          child: Container(
                            width: 60, // Диаметр внутреннего круга
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  imagePaths[index], // Путь к изображению
                                ),
                                fit: BoxFit.cover, // Подгонка изображения
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
