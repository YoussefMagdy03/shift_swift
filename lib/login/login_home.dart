
import 'package:flutter/material.dart';
import 'package:shiftswift/login/company/register_company.dart';
import 'package:shiftswift/login/helper/TextFiled.dart';
import 'package:shiftswift/login/user/register_user.dart';

class LoginHome extends StatelessWidget {
  
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final fromKey =GlobalKey<FormState>();
  LoginHome({super.key});

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
                "Login",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
          
              MaterialButton(
                onPressed: () {
          if (fromKey.currentState!.validate())
          {
              // Register 
              // blocprovider
          }
                },
                child: Text(
                  "Login",
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
                                  const EdgeInsets.symmetric(horizontal: 100),
                              child: Row(
                                children: [
                                  Center(
                                    child: Text(
                                      '   Don\'t have an account?  ',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                 
                                  
                                ],
                              ),
                            ),
                             SizedBox(height: 8,),
               Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 85),
                              child: Row(
                                children: [
                                  Text(
                                    '  Are you User? ',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RegisterUser()));
                                    },
                                    child: Text(
                                      'click here',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.blue),
                                    ),
                                  )
                                  
                                ],
                              ),
                            ),
                              SizedBox(height: 8,),
               Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 80),
                              child: Row(
                                children: [
                                  Text(
                                    '   Are you? Company ',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RegisterCompany()));
                                    },
                                    child: Text(
                                      'click here',
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
