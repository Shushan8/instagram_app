import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/constant/assets.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Горизонтальная прокрутка
        child: Row(
          children: [
            Container(
              width: 400, // Ширина ListView
              height: 300, // Высота ListView
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Горизонтальный ListView
                itemCount: 10, // Количество элементов
                itemBuilder: (context, index) {
                  return Stack(children: [
                    Container(
                      width: 85, // Диаметр круга
                      height: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.purple
                          ], // Градиентные цвета
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(
                            5.0), // Толщина градиентной рамки
                        child: Container(
                width: 70, // Диаметр внутреннего круга
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      Assets.storyImage, // Путь к изображению
                    ),
                    fit: BoxFit.cover, // Подгонка изображения
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
