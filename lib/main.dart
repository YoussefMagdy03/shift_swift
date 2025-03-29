import 'package:flutter/material.dart';
import 'package:shift_swift/profile/Profile%20All/profile_home.dart';
import 'package:shift_swift/splash/one_splash.dart';

void main() {
  runApp(const Shiftswift());
}

class Shiftswift extends StatelessWidget {
  const Shiftswift({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ProfileHome(),
    );
  }
}
