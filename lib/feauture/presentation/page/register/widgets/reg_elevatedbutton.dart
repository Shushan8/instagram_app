import 'package:flutter/material.dart';

class RegElevatedbutton extends StatelessWidget {
  const RegElevatedbutton(
      {super.key,
      required this.navFunctoun,
      required this.buttonText,
      required this.backColor});
  final Function() navFunctoun;
  final Color backColor;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return
     Padding(
              padding: const EdgeInsets.fromLTRB(32, 12, 32, 30),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: backColor,
       ),
       onPressed: navFunctoun,

      child: Text(
        buttonText,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
              )));
  }
}
