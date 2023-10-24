import 'package:flutter/material.dart';
import 'package:food_application/components/my_button.dart';
import 'package:food_application/components/square_tile.dart';
import 'package:food_application/components/text_field.dart';
import 'package:food_application/pages/register_page.dart';
import 'package:food_application/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  void signUserIN() {
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (context){
    //       return RegisterPage();
    //     })
    // );
  }


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
                'Welcome back to Account',
                style: TextStyle(color: Colors.grey[700]),  
              ),

              const SizedBox(height: 30),

              //Username field
              MyTextField(
                controller: usernameController, 
                hintText: 'Username', 
                obscureText: false
              ),

              const SizedBox(height: 20),
              //password field

              MyTextField(
                controller: passwordController, 
                hintText: 'Password', 
                obscureText: true
              ),

              // const SizedBox(height: 30),

              //forgot Password

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushNamedAndRemoveUntil(context, '/signup', (route) => false);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RegisterPage()),
                        );
                      },
                      child: const Text(
                        'Forgot Password',
                          style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 20),
              // Sign In
              MyButton(
                // onTap: signUserIN,
                onTap: (){
                  // Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context)=>const HomePage(),
                    )
                  );
                },
                myText: 'Sign In',
                myDecoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)), 
                myPadding: const EdgeInsets.all(25), 
                myMargin: const EdgeInsets.symmetric(horizontal: 25), 
                myTextStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)
              ),

              const SizedBox(height: 20),

              // Divider for Continue with
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              //Google + Facebook sign in Button
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Google 
                  SquareTile(imagePath: 'lib/images/google-removeBG.png'),

                  SizedBox(width: 10),

                  SquareTile(imagePath: 'lib/images/facebook-removeBG.png'),
                ],
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Not a member?'),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      // Navigator.pushNamedAndRemoveUntil(context, '/signup', (route) => false);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RegisterPage()),
                      );
                    },
                    child: const Text(
                      'Create Account',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  )
                  // MyButton(
                  //   myText: 'Create account', 
                  //   myDecoration: const BoxDecoration(color: Colors.transparent), 
                  //   myPadding: const EdgeInsets.all(0), 
                  //   myMargin: const EdgeInsets.symmetric(horizontal: 0), 
                  //   myTextStyle: TextStyle(color: Colors.blue[300]),
                  //   onTap: (){
                  //     Navigator.push(
                  //       context, 
                  //       MaterialPageRoute(
                  //         builder: (context)=>RegisterPage()
                  //         )
                  //     );
                  //   }
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}