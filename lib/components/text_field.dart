import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget{
  final controller;
  final String hintText;
  final bool obscureText;
  // final String exp;

  const MyTextField({
  super.key,
  required this.controller,
  required this.hintText,
  required this.obscureText,
  // required this.exp
});
  

@override
Widget build (BuildContext context) {
  return Padding (
    padding: const EdgeInsets.symmetric (horizontal: 25.0),
    child: TextFormField(
      validator: (value) {
        // if (value!.isEmpty || !RegExp('^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}').hasMatch(value)){
        //   return 'Enter Corrent email';
        // }
        // else{
        //   return null;
        // }
        if (value!.isEmpty){
          return 'Enter Corrent email';
        }
        else{
          return null;
        }
      },
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide (color: Colors.white),
        ), // OutlineInputBorder
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide (color: Colors.grey.shade400),
        ), // OutlineInputBorder
        fillColor: Colors.grey.shade200,
        filled: true,
        // hintText: hintText,
        labelText: hintText,
        ),
      ), 
    );  
  }
}