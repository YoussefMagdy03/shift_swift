import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shiftswift/core/app_colors.dart';
import 'package:shiftswift/login/authentication%20cubit/auth_cubit.dart';
import 'package:shiftswift/login/login_home.dart';
import 'package:shiftswift/profile/user%20info%20cubit/user_info_cubit.dart';

void main() {
  runApp(const Shiftswift());
}

class Shiftswift extends StatelessWidget {
  const Shiftswift({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => UserInfoCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginHome(),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blue),
        ),
      ),
    );
  }
}
