import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/app_layout.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icons_and_text.dart';
import 'package:food_delivery/widgets/small_text.dart';
import '../../utils/colors.dart' as color;

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currrentPageValue = 0.0;
  var scaleFactor = 0.8;
  final _height = AppLayout.getHeight(220.0);

  @override
  void initState() {
    super.initState();
    pageController.addListener(
      () {
        setState(() {
          _currrentPageValue = pageController.page!;
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppLayout.getHeight(320),
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItems(position);
            },
          ),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currrentPageValue,
          decorator: DotsDecorator(
            activeColor: color.AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        // Populor Text
        SizedBox(height: AppLayout.getHeight(30)),
        Container(
          margin: EdgeInsets.only(left: AppLayout.getHeight(30)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const BigText(text: "Populor"),
              SizedBox(
                width: AppLayout.getWidth(10),
              ),
              Container(
                margin: EdgeInsets.only(bottom: AppLayout.getHeight(3)),
                child: const BigText(
                  text: ".",
                  color: Colors.black26,
                ),
              ),
              SizedBox(
                width: AppLayout.getWidth(10),
              ),
              Container(
                margin: EdgeInsets.only(bottom: AppLayout.getHeight(2)),
                child: const SmallText(text: "food pairing"),
              )
            ],
          ),
        ),
        // SizedBox(height: AppLayout.getHeight(30)),

        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, positions) {
              return Container(
                margin: EdgeInsets.only(
                    left: AppLayout.getHeight(20),
                    right: AppLayout.getHeight(20),
                    bottom: AppLayout.getHeight(10)),
                child: Row(
                  children: [
                    Container(
                      height: AppLayout.getHeight(120),
                      width: AppLayout.getWidth(120),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(20)),
                        color: Colors.white12,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/food2.jpg"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: AppLayout.getHeight(100),
                        //width: AppLayout.getWidth(200),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight:
                                  Radius.circular(AppLayout.getHeight(20)),
                              bottomRight: Radius.circular(
                                AppLayout.getHeight(20),
                              ),
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xFFE8E8E8),
                                offset: Offset(0, 5),
                                blurRadius: 5.0,
                              ),
                              BoxShadow(
                                  color: Color(0xFFE8E8E8),
                                  offset: Offset(5, 0),
                                  blurRadius: 5.0),
                            ]),
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: AppLayout.getHeight(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const BigText(
                                  text: "Nutritious fruit meal in china"),
                              SizedBox(height: AppLayout.getHeight(10)),
                              const SmallText(
                                  text: "With chinese characterstics"),
                              SizedBox(height: AppLayout.getHeight(10)),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
      ],
    );
  }

  Widget _buildPageItems(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currrentPageValue.floor()) {
      var currScale = 1 - (_currrentPageValue - index) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currrentPageValue.floor() + 1) {
      var currScale =
          scaleFactor + (_currrentPageValue - index + 1) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currrentPageValue.floor() - 1) {
      var currScale = 1 - (_currrentPageValue - index) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      var currTrans = _height * (1 - scaleFactor) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: _height,
            margin: EdgeInsets.only(
                left: AppLayout.getHeight(10), right: AppLayout.getHeight(10)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              //color: const Color(0xFF69C5DF),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/food2.jpg"),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: AppLayout.getHeight(120),
              margin: EdgeInsets.only(
                  left: AppLayout.getHeight(30),
                  right: AppLayout.getHeight(30),
                  bottom: AppLayout.getHeight(30)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(20),
                  ),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFE8E8E8),
                      offset: Offset(0, 5),
                      blurRadius: 5.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, 0),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(5, 0),
                    ),
                  ]),
              child: Container(
                  padding: EdgeInsets.only(
                      top: AppLayout.getHeight(15),
                      left: AppLayout.getHeight(15),
                      right: AppLayout.getHeight(15)),
                  child: const AppColumn(
                    text: "Chinese Side",
                  )),
            ),
          )
        ],
      ),
    );
  }
}
