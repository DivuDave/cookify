import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  CustomField({
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.deepOrangeAccent[100],
          ),
          suffixIcon: Icon(
            suffixIcon,
            color: Colors.deepOrangeAccent[100],
          ),
          hintStyle: TextStyle(
            color: Colors.deepOrangeAccent[100],
          ),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          filled: true,
          fillColor: Colors.deepOrangeAccent[100]!.withOpacity(0.3),
        ),
      ),
    );
  }
}
