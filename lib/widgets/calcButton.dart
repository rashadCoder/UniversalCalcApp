import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textcolor;
  final double textsize;
  final Function callback;

  const CalcButton(
      {required this.text,
      required this.fillColor,
      required this.textcolor,
      required this.textsize,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(9),
      width: 70,
      height: 70,
      child: FlatButton(
        onPressed: () => callback(text),
        child: Text(
          text,
          style: TextStyle(fontSize: textsize),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        color: Color(fillColor),
        textColor: Color(textcolor),
      ),
    );
  }
}
