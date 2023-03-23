import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home/food_body_page.dart';
import 'package:food_delivery/utils/app_layout.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';
import '../../utils/colors.dart' as color;

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Column(
        children: [
          /*
          Showing the header part
          */
          Container(
            margin: EdgeInsets.only(
                top: AppLayout.getHeight(45), bottom: AppLayout.getHeight(15)),
            padding: EdgeInsets.only(
              left: AppLayout.getHeight(20),
              right: AppLayout.getHeight(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        BigText(
                            text: 'Bangladesh',
                            color: color.AppColors.mainColor),
                        Row(
                          children: [
                            SmallText(text: 'Narsingdi', color: Colors.black54),
                            Icon(Icons.arrow_drop_down_rounded)
                          ],
                        )
                      ],
                    ),
                    Center(
                      child: Container(
                        width: AppLayout.getWidth(45),
                        height: AppLayout.getHeight(45),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: color.AppColors.mainColor),
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          /*
          Showing the body part
           */

          const Expanded(
              child: SingleChildScrollView(
            child: FoodPageBody(),
          ))
        ],
      ),
    );
  }
}
