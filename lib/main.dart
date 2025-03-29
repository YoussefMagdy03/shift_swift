import 'package:flutter/material.dart';
import 'package:shiftswift/home/presentation/view/widgets/home_view_body.dart';



import 'package:shiftswift/core/app_colors.dart';


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
      home: HomeViewBody(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blue),
      ),
    );
  }
}
