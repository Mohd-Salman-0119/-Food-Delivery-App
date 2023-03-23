import 'package:flutter/material.dart';
import 'package:food_delivery/utils/app_layout.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/app_icons.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expendable_text_widget.dart';

String text =
    "With a long history, unique features, numerous styles, and exquisite cooking, Chinese cuisine is one of the important constituent parts of Chinese culture. Chinese traditional dishes are famous for their color, aroma, taste, meanings, and appearance. As China is a huge country, there are many regional differences in cuisine due to differing climates history, local ingredients, dining customs, etc.According to the cooking styles and regional flavors, Chinese cuisines can be divided into eight Chinse cuisines, which include Sichuan Cuisine, Hunan Cuisine, Shandong Cuisine, Zhejiang Cuisine, Fujian Cuisine, Anhui Cuisine, Cantonese Cuisine, and Jiangsu Cuisine. Each cuisine has its popular dishes. With a long history, unique features, numerous styles, and exquisite cooking, Chinese cuisine is one of the important constituent parts of Chinese culture. Chinese traditional dishes are famous for their color, aroma, taste, meanings, and appearance. As China is a huge country, there are many regional differences in cuisine due to differing climates history, local ingredients, dining customs, etc.According to the cooking styles and regional flavors, Chinese cuisines can be divided into eight Chinse cuisines, which include Sichuan Cuisine, Hunan Cuisine, Shandong Cuisine, Zhejiang Cuisine, Fujian Cuisine, Anhui Cuisine, Cantonese Cuisine, and Jiangsu Cuisine. Each cuisine has its popular dishes.With a long history, unique features, numerous styles, and exquisite cooking, Chinese cuisine is one of the important constituent parts of Chinese culture. Chinese traditional dishes are famous for their color, aroma, taste, meanings, and appearance. As China is a huge country, there are many regional differences in cuisine due to differing climates history, local ingredients, dining customs, etc.According to the cooking styles and regional flavors, Chinese cuisines can be divided into eight Chinse cuisines, which include Sichuan Cuisine, Hunan Cuisine, Shandong Cuisine, Zhejiang Cuisine, Fujian Cuisine, Anhui Cuisine, Cantonese Cuisine, and Jiangsu Cuisine. Each cuisine has its popular dishes. With a long history, unique features, numerous styles, and exquisite cooking, Chinese cuisine is one of the important constituent parts of Chinese culture. Chinese traditional dishes are famous for their color, aroma, taste, meanings, and appearance. As China is a huge country, there are many regional differences in cuisine due to differing climates history, local ingredients, dining customs, etc.According to the cooking styles and regional flavors, Chinese cuisines can be divided into eight Chinse cuisines, which include Sichuan Cuisine, Hunan Cuisine, Shandong Cuisine, Zhejiang Cuisine, Fujian Cuisine, Anhui Cuisine, Cantonese Cuisine, and Jiangsu Cuisine. Each cuisine has its popular dishes.With a long history, unique features, numerous styles, and exquisite cooking, Chinese cuisine is one of the important constituent parts of Chinese culture. Chinese traditional dishes are famous for their color, aroma, taste, meanings, and appearance. As China is a huge country, there are many regional differences in cuisine due to differing climates history, local ingredients, dining customs, etc.According to the cooking styles and regional flavors, Chinese cuisines can be divided into eight Chinse cuisines, which include Sichuan Cuisine, Hunan Cuisine, Shandong Cuisine, Zhejiang Cuisine, Fujian Cuisine, Anhui Cuisine, Cantonese Cuisine, and Jiangsu Cuisine. Each cuisine has its popular dishes. With a long history, unique features, numerous styles, and exquisite cooking, Chinese cuisine is one of the important constituent parts of Chinese culture. Chinese traditional dishes are famous for their color, aroma, taste, meanings, and appearance. As China is a huge country, there are many regional differences in cuisine due to differing climates history, local ingredients, dining customs, etc.According to the cooking styles and regional flavors, Chinese cuisines can be divided into eight Chinse cuisines, which include Sichuan Cuisine, Hunan Cuisine, Shandong Cuisine, Zhejiang Cuisine, Fujian Cuisine, Anhui Cuisine, Cantonese Cuisine, and Jiangsu Cuisine. Each cuisine has its popular dishes.";

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.yellowColor,
            toolbarHeight: 80,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  top: AppLayout.getHeight(5),
                  bottom: AppLayout.getHeight(10),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(20)),
                    topRight: Radius.circular(
                      AppLayout.getHeight(20),
                    ),
                  ),
                ),
                child: Center(
                  child: BigText(
                    text: "Chinese Side",
                    size: AppLayout.getHeight(26),
                  ),
                ),
              ),
            ),
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(
                image: AssetImage('assets/images/food2.jpg'),
                fit: BoxFit.cover,
                width: double.maxFinite,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: AppLayout.getWidth(20),
                      right: AppLayout.getWidth(20)),
                  child: ExpendableTextWidget(text: text),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: AppLayout.getWidth(50),
                right: AppLayout.getWidth(50),
                top: AppLayout.getHeight(10),
                bottom: AppLayout.getHeight(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconsSize: AppLayout.getHeight(24),
                  icon: Icons.remove,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                ),
                const BigText(
                  text: "\$12.88 " ' X ' ' 0 ',
                  color: Colors.black,
                ),
                AppIcon(
                  iconsSize: AppLayout.getHeight(24),
                  icon: Icons.add,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                )
              ],
            ),
          ),
          Container(
            height: AppLayout.getHeight(120),
            padding: EdgeInsets.only(
              left: AppLayout.getWidth(20),
              right: AppLayout.getWidth(20),
              top: AppLayout.getHeight(30),
              bottom: AppLayout.getHeight(30),
            ),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
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
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                      color: Colors.white),
                  child: const Icon(Icons.favorite, color: AppColors.mainColor),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: AppLayout.getWidth(20),
                      right: AppLayout.getWidth(20),
                      top: AppLayout.getHeight(20),
                      bottom: AppLayout.getHeight(20)),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                      color: AppColors.mainColor),
                  child: const Row(
                    children: [
                      BigText(text: "\$10 | Add to cart"),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
