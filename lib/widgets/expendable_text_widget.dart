import 'package:flutter/material.dart';
import 'package:food_delivery/utils/app_layout.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/small_text.dart';

class ExpendableTextWidget extends StatefulWidget {
  final String text;
  const ExpendableTextWidget({super.key, required this.text});

  @override
  State<ExpendableTextWidget> createState() => _ExpendableTextWidgetState();
}

class _ExpendableTextWidgetState extends State<ExpendableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool heddenText = true;

  double textHeight = AppLayout.getScreenHeight() / 5.63;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(text: firstHalf)
          : Column(
              children: [
                SmallText(
                  text:
                      heddenText ? ("$firstHalf...") : (firstHalf + secondHalf),
                  color: AppColors.paraColor,
                  height: 1.8,
                  size: AppLayout.getHeight(16),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      heddenText = !heddenText;
                    });
                  },
                  child: Row(children: [
                    SmallText(
                      text: heddenText ? "Show more" : "Show less",
                      color: AppColors.mainColor,
                      size: AppLayout.getHeight(16),
                    ),
                    Icon(
                      heddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                      color: AppColors.mainColor,
                    )
                  ]),
                )
              ],
            ),
    );
  }
}
