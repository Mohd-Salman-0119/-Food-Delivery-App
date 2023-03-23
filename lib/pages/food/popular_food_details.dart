import 'package:flutter/material.dart';
import 'package:food_delivery/utils/app_layout.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/app_icons.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expendable_text_widget.dart';
import '../../utils/colors.dart' as color;

String text =
    "With a long history, unique features, numerous styles, and exquisite cooking, Chinese cuisine is one of the important constituent parts of Chinese culture. Chinese traditional dishes are famous for their color, aroma, taste, meanings, and appearance. As China is a huge country, there are many regional differences in cuisine due to differing climates history, local ingredients, dining customs, etc.According to the cooking styles and regional flavors, Chinese cuisines can be divided into eight Chinse cuisines, which include Sichuan Cuisine, Hunan Cuisine, Shandong Cuisine, Zhejiang Cuisine, Fujian Cuisine, Anhui Cuisine, Cantonese Cuisine, and Jiangsu Cuisine. Each cuisine has its popular dishes. With a long history, unique features, numerous styles, and exquisite cooking, Chinese cuisine is one of the important constituent parts of Chinese culture. Chinese traditional dishes are famous for their color, aroma, taste, meanings, and appearance. As China is a huge country, there are many regional differences in cuisine due to differing climates history, local ingredients, dining customs, etc.According to the cooking styles and regional flavors, Chinese cuisines can be divided into eight Chinse cuisines, which include Sichuan Cuisine, Hunan Cuisine, Shandong Cuisine, Zhejiang Cuisine, Fujian Cuisine, Anhui Cuisine, Cantonese Cuisine, and Jiangsu Cuisine. Each cuisine has its popular dishes.";

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: AppLayout.getHeight(350),
              width: double.maxFinite,
              decoration: const BoxDecoration(
                //color: Colors.amber,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food2.jpg'),
                ),
              ),
            ),
          ),
          Positioned(
            top: AppLayout.getHeight(45),
            left: AppLayout.getWidth(20),
            right: AppLayout.getWidth(20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: AppLayout.getHeight(350) - 20,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                  left: AppLayout.getWidth(20),
                  right: AppLayout.getWidth(20),
                  top: AppLayout.getHeight(20)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getWidth(20)),
                  topRight: Radius.circular(
                    AppLayout.getWidth(20),
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(
                    text: "Chinese Side",
                  ),
                  SizedBox(height: AppLayout.getHeight(20)),
                  const BigText(text: "Introduce"),
                  SizedBox(height: AppLayout.getHeight(20)),
                  Expanded(
                      child: SingleChildScrollView(
                          child: ExpendableTextWidget(text: text))),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: AppLayout.getHeight(120),
        padding: EdgeInsets.only(
          left: AppLayout.getWidth(20),
          right: AppLayout.getWidth(20),
          top: AppLayout.getHeight(30),
          bottom: AppLayout.getHeight(30),
        ),
        decoration: BoxDecoration(
          color: color.AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppLayout.getHeight(40)),
            topRight: Radius.circular(AppLayout.getHeight(40)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: AppLayout.getWidth(20),
                  right: AppLayout.getWidth(20),
                  top: AppLayout.getHeight(20),
                  bottom: AppLayout.getHeight(20)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  color: Colors.white),
              child: Row(
                children: [
                  const Icon(Icons.remove, color: color.AppColors.signColor),
                  SizedBox(width: AppLayout.getWidth(5)),
                  const BigText(text: "0"),
                  SizedBox(width: AppLayout.getWidth(5)),
                  const Icon(Icons.add, color: color.AppColors.signColor)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: AppLayout.getWidth(20),
                  right: AppLayout.getWidth(20),
                  top: AppLayout.getHeight(20),
                  bottom: AppLayout.getHeight(20)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  color: color.AppColors.mainColor),
              child: const Row(
                children: [
                  BigText(text: "\$10 | Add to cart"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
