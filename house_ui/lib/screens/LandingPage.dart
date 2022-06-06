import 'package:flutter/material.dart';
import 'package:house_ui/widgets/BorderIcon.dart';
import 'package:house_ui/widgets/LandingPage/choiceoption.dart';
import 'package:house_ui/widgets/LandingPage/navbar.dart';
import 'package:house_ui/widgets/LandingPage/realestate_item.dart';
import 'package:house_ui/widgets/OptionButton.dart';
import 'package:house_ui/sample_data.dart';
import 'package:house_ui/utils/constants.dart';
import 'package:house_ui/utils/widget_functions.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addVerticalSpace(padding),
                  Padding(
                    padding: sidePadding,
                    child: LandingNavBar(),
                  ),
                  addVerticalSpace(20),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      "City",
                      style: themeData.textTheme.bodyText2,
                    ),
                  ),
                  addVerticalSpace(10),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      "San Francisco",
                      style: themeData.textTheme.headline1,
                    ),
                  ),
                  Padding(
                      padding: sidePadding,
                      child: Divider(
                        height: 25,
                        color: COLOR_GREY,
                      )),
                  addVerticalSpace(10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        "<\$220,000",
                        "For Sale",
                        "3-4 Beds",
                        ">1000 sqft"
                      ].map((filter) => ChoiceOption(text: filter)).toList(),
                    ),
                  ),
                  addVerticalSpace(10),
                  Expanded(
                    child: Padding(
                      padding: sidePadding,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: HOUSE_DATA.length,
                          itemBuilder: (context, index) {
                            return RealEstateItem(
                              itemData: HOUSE_DATA[index],
                            );
                          }),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 50,
                width: size.width,
                child: Center(
                  child: OptionButton(
                    text: "Map View",
                    icon: Icons.map_rounded,
                    width: size.width * 0.35,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
