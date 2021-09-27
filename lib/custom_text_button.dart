import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String? text;
  final TextDecoration? decoration;
  final void Function()? onPressed;

  const CustomTextButton({
    Key? key,
    this.text,
    this.decoration,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text!,
        style: TextStyle(
          color: Colors.deepOrangeAccent[100],
          decoration: decoration,
        ),
      ),
    );
  }
}
