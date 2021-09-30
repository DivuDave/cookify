import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final double? width;
  const CustomChip({
    this.text,
    this.icon,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icon,
                color: Colors.deepOrangeAccent[100],
                size: 30,
              ),
            ),
            Text(
              text!,
              style: TextStyle(
                color: Colors.deepOrangeAccent[100],
                fontSize: 18,
              ),
            ),
          ],
        ),
        height: 80,
        width: width,
        decoration: BoxDecoration(
          color: Colors.deepOrangeAccent[100]!.withOpacity(0.4),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
