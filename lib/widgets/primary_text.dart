import 'package:flutter/material.dart';

class PrimaryTexy extends StatelessWidget {
  final String text;
  Color color;
  double size;
  TextOverflow textOverflow;
  PrimaryTexy(
      {Key? key,
      required this.text,
      this.color = const Color(0xFF89dad0),
      this.size = 20,
      this.textOverflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          overflow: textOverflow,
          color: color,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          fontSize: size),
    );
  }
}
