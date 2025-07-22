import 'package:fitnesss_app/screens/Auth/forgot_passward.dart';
import 'package:fitnesss_app/screens/Auth/login_signup.dart';
import 'package:fitnesss_app/screens/UserData/AgeScreen/age_screen.dart';
import 'package:flutter/material.dart';

import 'screens/UserData/GenderScreen/gender_screen.dart';
import 'screens/UserData/GoalScreen/goal_screen.dart';
import 'screens/UserData/HeightScreen/height_screen.dart';
import 'screens/UserData/LevelScreen/level_screen.dart';
import 'screens/OnboardingScreen/onboarding_screen.dart';
import 'screens/UserData/WeightScreen/weight_screen.dart';

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
        '/login': (context) => SignUp(),
        '/forgotPassword': (context) => ForgotPassward(),
        
      },
      home: OnBoardingScreen(

      ),
    );
  }
}