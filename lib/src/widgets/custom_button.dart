import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({@required this.onPressed, @required this.text});

  final GestureTapCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Color.fromARGB(255, 5, 83, 159),
      splashColor: Color.fromARGB(127, 5, 83, 159),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(this.text,
            maxLines: 1,
            style: TextStyle(
                color: Color.fromARGB(255, 235, 170, 67), fontSize: 22)),
      ),
      shape: const StadiumBorder(),
    );
  }
}
