import 'package:flutter/material.dart';

class StoryWidget extends StatefulWidget {
  const StoryWidget(
      {super.key,
      required this.image,
      required this.gradient,
      required this.width,
      required this.height,
      required this.widthcont,
      required this.padin,

      });
  final String image;
  final bool gradient;
  final double width;
  final double height;
  final double widthcont;
  final double padin;

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
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
          padding:  EdgeInsets.all(widget.padin),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: widget.widthcont),
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
    ]);
  }
}
