import 'package:flutter/material.dart';
import 'package:muslim/screens/home_screen.dart';
import 'package:muslim/screens/onboarding_screen.dart';
import 'package:muslim/screens/pray_screen.dart';
import 'package:muslim/screens/tasbih_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          routes: {
            'home' : (context)=>HomeView(),
            'onBoarding' : (context)=>OnboardingScreen(),
            'tasbih' : (context)=>TasbihScreen(),
            'pray' : (context)=>PrayScreen(),
          },
          debugShowCheckedModeBanner: false,
          home: OnboardingScreen(),
        );
  }
}
