import 'package:e_commerce_ui/views/widgets/colors.dart';
import 'package:e_commerce_ui/views/pages/home/constants/texts.dart';
import 'package:e_commerce_ui/views/widgets/app_bar_custom_icon.dart';
import 'package:e_commerce_ui/views/pages/home/widgets/collection_items.dart';
import 'package:e_commerce_ui/views/pages/home/widgets/collections.dart';
import 'package:e_commerce_ui/views/widgets/custom_icon_button.dart';
import 'package:e_commerce_ui/views/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText(
                  text: collections,
                  minFontSize: 30,
                  maxFontSize: 35,
                  textStyle: TextStyle(fontWeight: FontWeight.w600),
                ),
                CustomIconButton(
                  iconData: CupertinoIcons.slider_horizontal_3,
                  iconSize: 33,
                  iconColor: homePageHorizontalSliderColor,
                )
              ],
            ),
          ),
          const Collections(),
          CollectionItems(),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppBarCustomIcon(
                  iconData: Icons.arrow_back_ios,
                  leftPadding: 0,
                  rightPadding: 0,
                  iconColor: greyColor,
                  iconSize: 25,
                  containerPadding: const EdgeInsets.all(25),
                  containerBackgroundColor: whiteColor,
                  iconPadding: const EdgeInsets.only(left: 10),
                  topPadding: 20,
                  bottomPadding: 0,
                  containerBoxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7),
                  ],
                ),
                Column(
                  children: [
                    const CustomText(
                      text: hoodieRose,
                      minFontSize: 35,
                      maxFontSize: 45,
                      textStyle: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        CustomText(
                            text: dollarSign,
                            minFontSize: 30,
                            maxFontSize: 35,
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: orangeColor)),
                        const SizedBox(width: 10),
                        CustomText(
                            text: priceOfTheItem,
                            minFontSize: 25,
                            maxFontSize: 35,
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: orangeColor))
                      ],
                    )
                  ],
                ),
                AppBarCustomIcon(
                  bottomPadding: 0,
                  iconData: Icons.arrow_forward_ios,
                  leftPadding: 0,
                  rightPadding: 0,
                  iconColor: greyColor,
                  iconSize: 25,
                  topPadding: 20,
                  containerPadding: const EdgeInsets.all(25),
                  containerBackgroundColor: whiteColor,
                  iconPadding: const EdgeInsets.all(0),
                  containerBoxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
