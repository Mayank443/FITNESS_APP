import 'package:fitnesss_app/screens/Login_Signup/forgot_passward.dart';
import 'package:fitnesss_app/screens/Stack/AgeScreen/age_screen.dart';
import 'package:flutter/material.dart';

import 'screens/Stack/GenderScreen/gender_screen.dart';
import 'screens/Stack/GoalScreen/goal_screen.dart';
import 'screens/Stack/HeightScreen/height_screen.dart';
import 'screens/Stack/LevelScreen/level_screen.dart';
import 'screens/Stack/OnboardingScreen/onboarding_screen.dart';
import 'screens/Stack/WeightScreen/weight_screen.dart';

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
        '/activity': (context) => LevelScreen(),
        
      },
      home: ForgotPassward(),
    );
  }
}