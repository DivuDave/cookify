import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String? imageUrl;
  final String? text;
  const CustomContainer({Key? key, this.imageUrl, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageUrl!,
              ),
            ),
            borderRadius: BorderRadius.circular(15),
            color: Colors.deepOrangeAccent[100]!.withOpacity(0.4),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                text!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
            height: 30,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}
