import 'package:flutter/material.dart';
import 'package:food_application/components/my_button.dart';
import 'package:food_application/components/text_field.dart';
import 'package:food_application/pages/login_page.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({super.key});

   final usernameController = TextEditingController();
   final phoneController = TextEditingController();
  final passwordController = TextEditingController();


  void signUserIN() {}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              //Icon
              const Icon(
                Icons.lock,
                size: 100,
              ),


              const SizedBox(height: 20),

              // Text Field
              Text(
                'Create your Account',
                style: TextStyle(color: Colors.grey[700]),  
              ),

              const SizedBox(height: 40),

              MyTextField(
                controller: usernameController, 
                hintText: 'Email', 
                obscureText: false
              ),

              const SizedBox(height: 20),

              //Username field
              MyTextField(
                controller: phoneController, 
                hintText: 'Phone Number', 
                obscureText: false
              ),

              const SizedBox(height: 20),
              //password field

              MyTextField(
                controller: passwordController, 
                hintText: 'Password', 
                obscureText: true
              ),


              const SizedBox(height: 30),
              // Sign In
              MyButton(
                onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context)=>LoginPage()
                          )
                      );
                    },
                myText: 'Sign Up',
                myDecoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)), 
                myPadding: const EdgeInsets.all(25), 
                myMargin: const EdgeInsets.symmetric(horizontal: 25), 
                myTextStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)
              ),
              

            ],
          ),
        ),
      ),
    );
  }
}