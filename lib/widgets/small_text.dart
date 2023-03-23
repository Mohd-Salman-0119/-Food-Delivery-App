import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final double height;
  const SmallText({
    super.key,
    required this.text,
    this.size = 12,
    this.height = 1.2,
    this.color = const Color(0xFFCCC7C5),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: size,
        height: height,
        color: color,
      ),
    );
  }
}
