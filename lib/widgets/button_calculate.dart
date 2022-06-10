import 'package:flutter/material.dart';

class Button_Calculate extends StatelessWidget {
  const Button_Calculate({
    this.text,
    this.onPressed,
   
  });
  final String text;
 final dynamic onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      
      child: Container(
        height: 60.0,
        color: Colors.red,
        child: Center(
          child: Text(
            text.toUpperCase(),
            style:
                const TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}