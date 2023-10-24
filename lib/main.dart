// import 'dart:html';
// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_application/pages/home_page.dart';
import 'package:food_application/pages/login_page.dart';
import 'package:food_application/pages/register_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // if (Platform.isWindows)
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'The Cafe Club',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        // fontFamily: "Raleway",
        // textTheme: TextTheme(bodyText2: TextStyle(color: Color(0xFF7589a3))),
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: LoginPage(),

      routes: {
        '/' : (context) => LoginPage(),
        '/register' : (context) => const RegisterPage(),
        '/home' : (context) => const HomePage()
      },

      // routes: {
      //   '/':(context) => RegisterPage(),
      // },
    );
  }
}