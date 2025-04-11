import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shiftswift/login/login_home.dart';
import 'package:shiftswift/profile/Models/user_info_model.dart';
import 'package:shiftswift/profile/Profile%20All/AboutAS/about_as.dart';

import 'package:shiftswift/profile/Profile%20All/Edit%20profile/Edit_profile_home.dart';
import 'package:shiftswift/profile/Profile%20All/HelpCenter/help_center.dart';
import 'package:shiftswift/profile/Profile%20All/Settting/settting_home_user.dart';
import 'package:shiftswift/profile/user%20info%20cubit/user_info_cubit.dart';

class ProfileHome extends StatelessWidget {
  const ProfileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(43, 91, 141, 1),
        elevation: 0,
      ),
      body: Column(
        children: [
          // القسم العلوي (صورة المستخدم والاسم والبريد)
          Container(
            color: Color.fromRGBO(43, 91, 141, 1),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(
                    'asstes/three.png',
                  ), // تأكد من إضافة صورة في مجلد assets
                ),
                const SizedBox(width: 15),
                UserProfileData(),
              ],
            ),
          ),

          // القائمة الرئيسية
          Expanded(
            child: ListView(
              children: [
                _buildProfileOption(
                  Icons.edit,
                  "Edit Profile",
                  context,
                  EditProfileScreen(),
                ),
                SizedBox(height: 15),
                _buildProfileOption(
                  Icons.settings,
                  "Settings",
                  context,
                  SettingsScreen(),
                ),
                SizedBox(height: 15),

                _buildProfileOption(
                  Icons.help,
                  "Help Center",
                  context,
                  HelpCenterScreen(),
                ),
                SizedBox(height: 15),
                _buildProfileOption(
                  Icons.info,
                  "About Us",
                  context,
                  AboutUsScreen(),
                ),
                SizedBox(height: 15),
                _buildProfileOption(
                  Icons.logout,
                  "Sign Out",
                  context,
                  LoginHome(),
                  isLogout: true,
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// دالة لإنشاء عناصر القائمة مع التنقل
Widget _buildProfileOption(
  IconData icon,
  String title,
  BuildContext context,
  Widget page, {
  bool isLogout = false,
}) {
  return ListTile(
    leading: Icon(icon, color: Color.fromRGBO(43, 91, 141, 1), size: 30),
    title: Text(title, style: TextStyle(color: Colors.black)),
    trailing: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.grey),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
  );
}

class UserProfileData extends StatelessWidget {
  const UserProfileData({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserInfoCubit, UserInfoState>(
      builder: (context, state) {
        if (state is UserInfoSuccess) {
          UserInfoModel usermodel =
              BlocProvider.of<UserInfoCubit>(context).userModel!;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                usermodel.userName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                usermodel.email,
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
            ],
          );
        } else if (state is UserInfoFailure) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "abdelrahman Mohammed",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Abdelrahmanmohamed@example.com",
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
            ],
          );
        } else {
          return Container();
        }
      },
    );
  }
}

// الصفحات المختلفة
