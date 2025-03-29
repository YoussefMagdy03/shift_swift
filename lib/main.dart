import 'package:flutter/material.dart';

import 'package:shiftswift/profile/Profile%20All/profile_home.dart';
import 'package:shiftswift/splash/one_splash.dart';

import 'package:shiftswift/core/app_colors.dart';
import 'package:shiftswift/splash/one_splash.dart';

void main() {
  runApp(const Shiftswift());
}

class Shiftswift extends StatelessWidget {
  const Shiftswift({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OneSolash(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blue),
      ),
    );
  }
}
