import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.title, required this.onPressed});
final String title;
final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      // minWidth: 70,
      onPressed:onPressed,
      color: const Color(0xffff9900),
      child:  Text(title,style: TextStyle(fontSize: 20),),
    );
  }
}
