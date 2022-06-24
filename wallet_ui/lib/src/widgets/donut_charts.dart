import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class DataPerItem {
  final String name;
  final int percent;
  final charts.Color color;

  DataPerItem(this.name, this.percent, Color color)
      : color = charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);
}
