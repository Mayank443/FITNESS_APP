import 'package:flutter/material.dart';
import '../constants/colors.dart';

class ListwheelScrollView extends StatelessWidget {
  final List<String> items;
  const ListwheelScrollView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return ListWheelScrollView(
        magnification: 1.3,
        useMagnifier: true,
        overAndUnderCenterOpacity: 0.19,
        physics: FixedExtentScrollPhysics(),
        controller: FixedExtentScrollController(initialItem: items.length ~/ 2),
        itemExtent: 50,
        // onSelectedItemChanged: (index) {
        //   print(index);
        // },
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