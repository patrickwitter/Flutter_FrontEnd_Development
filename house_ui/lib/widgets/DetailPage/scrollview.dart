import 'package:flutter/material.dart';
import 'package:house_ui/widgets/InformationTile.dart';

class DeatilScrollView extends StatelessWidget {
  const DeatilScrollView({
    Key? key,
    required this.itemData,
  }) : super(key: key);

  final dynamic itemData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          InformationTile(
            content: "${itemData["area"]}",
            name: "Square Foot",
          ),
          InformationTile(
            content: "${itemData["bedrooms"]}",
            name: "Bedrooms",
          ),
          InformationTile(
            content: "${itemData["bathrooms"]}",
            name: "Bathrooms",
          ),
          InformationTile(
            content: "${itemData["garage"]}",
            name: "Garage",
          )
        ],
      ),
    );
  }
}
