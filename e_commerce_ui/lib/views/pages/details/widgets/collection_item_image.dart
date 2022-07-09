import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_ui/views/widgets/app_bar_custom_icon.dart';
import 'package:e_commerce_ui/views/widgets/colors.dart';
import 'package:e_commerce_ui/views/pages/details/widgets/dropdown_action_buttons.dart';
import 'package:flutter/material.dart';

class CollectionItemImage extends StatelessWidget {
  const CollectionItemImage({Key? key, required this.imagePathOfTheModel})
      : super(key: key);

  final String imagePathOfTheModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width,
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                whiteColor,
                appBackgroundColor.withOpacity(0),
                appBackgroundColor.withOpacity(0),
                appBackgroundColor.withOpacity(0.2),
                appBackgroundColor,
              ],
              begin: const FractionalOffset(0, 0),
              end: const FractionalOffset(0, 0.95),
              stops: const [0.1, 0, 0.6, 0.8, 1],
            ),
          ),
          child: Image.asset(imagePathOfTheModel),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppBarCustomIcon(
              onTap: () {
                AutoRouter.of(context).pop();
              },
              iconData: Icons.arrow_back,
              leftPadding: 25,
              topPadding: 0,
              rightPadding: 0,
              bottomPadding: 100,
              iconSize: 30,
              iconColor: orangeColor,
              containerPadding: const EdgeInsets.all(30),
              containerBackgroundColor: appBackgroundColor,
              iconPadding: const EdgeInsets.all(0),
            ),
            const DropDownActionButtons()
          ],
        ),
      ],
    );
  }
}
