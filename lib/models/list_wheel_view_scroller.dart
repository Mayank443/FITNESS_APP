import 'package:flutter/material.dart';
import '../constants/colors.dart';

class ListwheelScrollView extends StatelessWidget {
  final List<String> items;
  const ListwheelScrollView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
        magnification: 1.3,
        useMagnifier: true,
        overAndUnderCenterOpacity: 0.2,
        physics: FixedExtentScrollPhysics(),
        controller: FixedExtentScrollController(initialItem: items.length ~/ 2),
        itemExtent: 50,
        diameterRatio: 1.5,
        children: items.map((level) {
          return Text(
            level,
            style: TextStyle(
                fontSize: 30, color: primaryColor, fontWeight: FontWeight.bold),
          );
        }).toList());
  }
}