import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  SmallText({
    super.key,
    this.size = 12,
    this.color = const Color(0xFFccc7c5),
    this.height = 1.2,
    required this.text,
  });
  Color? color;
  final String text;
  double height;
  double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'Roboto',
        height: height,
      ),
    );
  }
}
