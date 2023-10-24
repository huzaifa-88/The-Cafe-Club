import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:food_application/components/my_button.dart';
import 'package:food_application/components/text_field.dart';
import 'package:food_application/pages/login_page.dart';
import 'package:http/http.dart' as http;
// import 'package:fluttertoast/fluttertoast.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
// Variable decalartion-------

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  String responseTxt = '.';
  GlobalKey<FormState> formState = GlobalKey<FormState>();
// ====================================================Variable ending

// Function Declaration

  Future fetchDataFromUserAPI(
      String name, String email, String phNum, String password) async {
    // var salt = generatesSalt()
    // var hashedPassword = hashedPassword(password);

    final url = Uri.parse('http://localhost:4000/api/users');
    final headers = {'Content-type': 'application/json'};
    final body = jsonEncode({
      "Full Name": name,
      "User Email": email,
      "Contact": phNum,
      "Password": password
    });

    final response = await http.post(url, headers: headers, body: body);

    return response;
  } //fetchDataFromUserAPI

  void _signUp() async {
    String name = nameController.text;
    String email = emailController.text;
    String phoneNumber = phoneController.text;
    String password = passwordController.text;

    var response = fetchDataFromUserAPI(name, email, phoneNumber, password);
    responseTxt = "Registration Successfull";
    print(responseTxt);
    const AlertDialog(
      title: Text("My title"),
      content: Text("This is my message."),
    );

    // if(response.statusCode == 200){
    //   setState(() {
    //     responseTxt = "Registration Successfull";
    //   });
    // }
    // else{
    //   responseTxt = "Error Occured! Try Again.";
    //   // responseTxt = "Error: ${response.statusCode}";
    // }
  } //signUp

  dynamic validateCredentials(dynamic value) {
    if (!(value.length > 5) && value.isNotEmpty) {
      return "Password should contain more than 5 characters";
    }
    return null;
  }

  // void showToastMesaages(String message) => Fluttertoast.showToast(
  //   msg: message,
  // );
// ================================================Function Ending

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
                controller: nameController,
                hintText: 'Full Name',
                obscureText: false,
              ),

              const SizedBox(height: 20),

              MyTextField(
                  key: formState,
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false),

              const SizedBox(height: 20),

              //Username field
              MyTextField(
                  controller: phoneController,
                  hintText: 'Phone Number',
                  obscureText: false),

              const SizedBox(height: 20),
              //password field

              MyTextField(
                  // exp: '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}',
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true),

              const SizedBox(height: 30),

              // ElevatedButton(onPressed: () => showToastMesaages("This is message"), child: const Text("Show Toast Message")),
              // Sign up
              MyButton(
                  onTap: () {
                    // _signUp();
                    // validateCredentials(MyTextField);
                    // if(formState.currentState!.validate()){
                    //   const snackBar = SnackBar(content: Text('Registration Sucessfully'));

                    // }
                    // formState.currentState!.validate();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  myText: 'Sign Up',
                  myDecoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  myPadding: const EdgeInsets.all(25),
                  myMargin: const EdgeInsets.symmetric(horizontal: 25),
                  myTextStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
