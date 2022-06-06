import 'package:flutter/material.dart';
import 'package:house_ui/widgets/DetailPage/headertext.dart';
import 'package:house_ui/widgets/DetailPage/navbar.dart';
import 'package:house_ui/widgets/DetailPage/scrollview.dart';
import 'package:house_ui/widgets/OptionButton.dart';
import 'package:house_ui/utils/constants.dart';
import 'package:house_ui/utils/widget_functions.dart';

class DetailPage extends StatelessWidget {
  final dynamic itemData;

  const DetailPage({Key? key, required this.itemData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    final double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
        backgroundColor: COLOR_WHITE,
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset(itemData["image"]),
                        Positioned(
                          width: size.width,
                          top: padding,
                          child: Padding(
                            padding: sidePadding,
                            child: DetailNavBar(),
                          ),
                        ),
                      ],
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: DetailHeaderText(
                          itemData: itemData, themeData: themeData),
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Text(
                        "House Information",
                        style: themeData.textTheme.headline4,
                      ),
                    ),
                    addVerticalSpace(padding),
                    DeatilScrollView(itemData: itemData),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Text(
                        itemData["description"],
                        textAlign: TextAlign.justify,
                        style: themeData.textTheme.bodyText2,
                      ),
                    ),
                    addVerticalSpace(100),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OptionButton(
                      text: "Message",
                      icon: Icons.message,
                      width: size.width * 0.35,
                    ),
                    addHorizontalSpace(10),
                    OptionButton(
                      text: "Call",
                      icon: Icons.call,
                      width: size.width * 0.35,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
