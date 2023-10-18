import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String myText;
  final Decoration myDecoration;
  final EdgeInsetsGeometry? myPadding;
  final EdgeInsetsGeometry? myMargin;
  final TextStyle? myTextStyle;

  final Function()? onTap;

  const MyButton({
      super.key,
      required this.myText,
      required this.myDecoration,
      required this.myPadding,
      required this.myMargin,
      required this.myTextStyle,
      required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      decoration: myDecoration,
      padding: myPadding,
      margin: myMargin,
      child: Center(
        child: Text(
          myText,
          style: myTextStyle,
          )
        ),
      ),
    );
  }
}