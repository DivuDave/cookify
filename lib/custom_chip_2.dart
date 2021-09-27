import 'package:flutter/material.dart';

class CustomChip2 extends StatefulWidget {
  final String? text1;
  final String? text2;

  CustomChip2({
    Key? key,
    this.text1,
    this.text2,
  }) : super(key: key);

  @override
  _CustomChip2State createState() => _CustomChip2State();
}

class _CustomChip2State extends State<CustomChip2> {
  bool? selected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            selected = true;
          });
        },
        child: SizedBox(
          width: 60,
          child: Chip(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: selected == true
                ? Colors.deepOrangeAccent[100]
                : Colors.grey[900],
            label: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.text1!,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.text2!,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
