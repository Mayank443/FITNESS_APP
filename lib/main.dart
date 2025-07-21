import 'package:fitnesss_app/screens/AgeScreen/age_screen.dart';
import 'package:flutter/material.dart';

import 'screens/GenderScreen/gender_screen.dart';
import 'screens/GoalScreen/goal_screen.dart';
import 'screens/HieghtScreen/height_screen.dart';
import 'screens/OnboardingScreen/onboarding_screen.dart';
import 'screens/WeightScreen/weight_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      routes: {
        '/onboarding': (context) => OnBoardingScreen(),
        '/gender': (context) => GenderPage(),
        '/age': (context) => AgePage(),
        '/weight': (context) => WeightPage(),
        '/height': (context) => HeightPage(),
        '/goal': (context) => GoalPage(),
        
      },
      home: OnBoardingScreen(),
    );
  }
}