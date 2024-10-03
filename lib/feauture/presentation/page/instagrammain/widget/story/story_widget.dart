import 'package:flutter/material.dart';

class StoryWidget extends StatefulWidget {
  const StoryWidget({
    super.key,
    required this.image,
    required this.gradient,
    required this.width,
    required this.height
  });
  final String image;
  final bool gradient;
  final double width;
  final double height;

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: widget.gradient
                ? LinearGradient(
                    colors: const [
                      Color(0xffFBAA47),
                      Color(0xffD91A46),
                      Color(0xffA60F93),
                    ], // Градиентные цвета
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )
                : LinearGradient(
                    colors: const [
                      Color.fromARGB(255, 253, 253, 253),
                      Color.fromARGB(255, 253, 253, 253),
                      Color.fromARGB(255, 253, 253, 253),
                    ], // Градиентные цвета
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.5),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
