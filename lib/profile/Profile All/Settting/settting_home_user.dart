import 'package:flutter/material.dart';
import 'package:shiftswift/profile/Profile%20All/Settting/Device_managment.dart';
import 'package:shiftswift/profile/Profile%20All/Settting/chang_Email.dart';
import 'package:shiftswift/profile/Profile%20All/Settting/delet_account.dart';
import 'package:shiftswift/profile/Profile%20All/Settting/manage_2Fa.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildSettingItem(
            title: "Email",
            subtitle: "Karim.Ali@example.com",
            buttonText: "Change Email",
            onPressed: () {
              Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => ChangeEmailScreen()),
);

            },
          ),
          _buildSettingItem(
            title: "Two-Factor Authentication (2FA)",
            subtitle: "Disable",
            buttonText: "Manage 2FA",
            onPressed: () {
              Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => TwoFactorAuthPage()),
);

            },
          ),
          _buildSettingItem(
            title: "Block List",
            subtitle: "4 users",
            buttonText: "View",
            onPressed: () {
              print("View Block List Clicked");
            },
          ),
          _buildSettingItem(
            title: "Device Management",
            subtitle: "",
            buttonText: "View",
            onPressed: () {
                          Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => DeviceManagementPage()));
            },
          ),
          _buildSettingItem(
            title: "Delete Account",
            subtitle: "",
            buttonText: "Delete My Account",
            isDestructive: true,
            onPressed: () {
              Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => DeleteAccountPage()),
);

            },
          ),
        ],
      ),
    );
  }

  // دالة لإنشاء عنصر في قائمة الإعدادات
  Widget _buildSettingItem({
    required String title,
    String? subtitle,
    required String buttonText,
    required VoidCallback onPressed,
    bool isDestructive = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, ),
              ),
              if (subtitle != null && subtitle.isNotEmpty)
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey[700]),
                ),
            ],
          ),
          OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              foregroundColor:   Colors.blue,
              side: BorderSide(color: Colors.blue),
            ),
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }
}