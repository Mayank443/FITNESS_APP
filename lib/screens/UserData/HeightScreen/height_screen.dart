import 'package:flutter/material.dart';

import '../../../models/detail_page_button.dart';
import '../../../models/detail_page_title.dart';
import '../../../models/list_wheel_view_scroller.dart';

class HeightPage extends StatefulWidget {
  const HeightPage({super.key});

  @override
  State<HeightPage> createState() => _HeightPageState();
}

class _HeightPageState extends State<HeightPage> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [];
    for (int i = 1; i < 200; i++) {
      items.add(i.toString());
    }
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
          top: size.height * 0.06,
          left: size.width * 0.05,
          right: size.width * 0.05,
          bottom: size.height * 0.03,
        ),
        child: Column(
          children: [
            DetailPageTitle(
                title: "What is your Height?",
                text: 'This helps us to create a personlized plan for you',
                color: Colors.white),
            SizedBox(
              height: size.height * 0.055,
            ),
            SizedBox(
              height: size.height * 0.5,
              child: ListwheelScrollView(items: items,),
            ),
            DetailPageButton(text: 'Next', onTap: () {
              Navigator.pushNamed(context, '/goal');
            }, showBackButton: true,
            onBackTap: (){
              Navigator.pop(context);
            },),
          ],
        ),
      ),
    );
  }
}