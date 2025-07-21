import 'package:flutter/material.dart';

import '../../models/detail_page_button.dart';
import '../../models/detail_page_title.dart';
import '../../models/list_wheel_view_scroller.dart';

class LevelScreen extends StatefulWidget {
  const LevelScreen({super.key});

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'Rookie',
      'Beginner',
      'Intermediate',
      'Advanced',
      'Pro',
    ];

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
            const DetailPageTitle(
                text: 'This helps us to create a personlized plan for you',
                title: "What is your Activity Level?",
                color: Colors.white),
            SizedBox(
              height: size.height * 0.055,
            ),
            SizedBox(
              height: size.height * 0.5,
              child: ListwheelScrollView(
                items: items,
              ),
            ),
            DetailPageButton(
              text: 'Next',
              onTap: () {},
              showBackButton: true,
              onBackTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}