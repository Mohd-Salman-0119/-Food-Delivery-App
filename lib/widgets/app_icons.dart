import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final double iconsSize;
  const AppIcon({
    super.key,
    required this.icon,
    this.backgroundColor = const Color(0xFFFCF4E4),
    this.iconColor = const Color(0xFF756D54),
    this.size = 40,
    this.iconsSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: backgroundColor,
      ),
      child: Center(
        child: Icon(
          icon,
          color: iconColor,
          size: iconsSize,
        ),
      ),
    );
  }
}
