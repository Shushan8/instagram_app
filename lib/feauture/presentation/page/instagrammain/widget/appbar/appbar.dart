import 'package:flutter/material.dart';
class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      // leading:
      // // const Icon(
      // //     Icons.camera_alt_outlined,
      // //     color: Colors.black,
      // //   ),
      //   // backgroundColor: Colors.white,
        title:const Text(
          "Instagram",
          style: TextStyle(
            fontFamily: "instagram",
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions:const <Widget>[
          Icon(
            Icons.send,
            color: Colors.black,
          ),
        ],
    );
  }
}