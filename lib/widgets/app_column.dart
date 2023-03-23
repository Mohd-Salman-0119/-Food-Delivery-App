import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import 'big_text.dart';
import 'icons_and_text.dart';
import 'small_text.dart';
import '../../utils/colors.dart' as color;

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: AppLayout.getHeight(26),
        ),
        SizedBox(height: AppLayout.getHeight(10)),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => const Icon(
                  Icons.star,
                  color: color.AppColors.mainColor,
                  size: 14,
                ),
              ),
            ),
            SizedBox(
              width: AppLayout.getHeight(10),
            ),
            const SmallText(text: "4.5"),
            SizedBox(
              width: AppLayout.getHeight(10),
            ),
            const SmallText(text: "1287"),
            SizedBox(
              width: AppLayout.getHeight(10),
            ),
            const SmallText(text: "comments")
          ],
        ),
        SizedBox(height: AppLayout.getHeight(20)),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: color.AppColors.iconColor1),
            IconAndText(
                icon: Icons.location_on,
                text: "17km",
                iconColor: color.AppColors.mainColor),
            IconAndText(
                icon: Icons.access_time_rounded,
                text: "32min",
                iconColor: color.AppColors.iconsColor2)
          ],
        )
      ],
    );
  }
}
