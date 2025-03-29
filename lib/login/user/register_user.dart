
import 'package:flutter/material.dart';
import 'package:shift_swift/login/helper/TextFiled.dart';
import 'package:shift_swift/login/login_home.dart';

class RegisterUser extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final fromKey =GlobalKey<FormState>();
  RegisterUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        
        child: Form(
          key: fromKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sing Up",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 35),
              coustmTextFailed(
                icon: Icons.person,
                hinText: 'User Name',
                controller: nameController,
              ),
              SizedBox(height: 20),
              coustmTextFailed(
                hinText: 'Email',
                controller: emailController,
                icon: Icons.email,
              ),
            
              SizedBox(height: 20),
              coustmTextFailed(
              
                isScure: true,
                hinText: 'Password',
                controller: passwordController,
                icon: Icons.lock_outline,
              ),
                SizedBox(height: 20),
              coustmTextFailed(
                hinText: 'Phone',
                controller: phoneController,
                icon: Icons.phone,
              ),
              SizedBox(height: 20),
          
              MaterialButton(
                onPressed: () {
          if (fromKey.currentState!.validate())
          {
              // Register 
              // blocprovider
          }
                },
                child: Text(
                  "Register",
                  style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.symmetric(vertical: 15),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                textColor: Colors.white,
                minWidth: double.infinity,
              ),
              SizedBox(height: 8,),
               Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 70),
                              child: Row(
                                children: [
                                  Text(
                                    ' Already have an account?  ',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginHome()));
                                    },
                                    child: Text(
                                      'Logn in',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.blue),
                                    ),
                                  )
                                ],
                              ),
                            )
            ],
          ),
        ),
      ),
    );
  }
}
