import 'dart:ui';

import 'package:cookify/auth/screens/meal/poached_egg.dart';
import 'package:cookify/widgets/custom_chip_2.dart';
import 'package:cookify/widgets/custom_row.dart';
import 'package:flutter/material.dart';

class MealPlan extends StatefulWidget {
  const MealPlan({Key? key}) : super(key: key);

  @override
  _MealPlanState createState() => _MealPlanState();
}

class _MealPlanState extends State<MealPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Today's Plan",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: customChip2List,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Vitamins & Minerals",
                          style: TextStyle(
                            color: Colors.deepOrangeAccent[100],
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                        ),
                      ),
                      Text(
                        "How much should you take?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "80",
                                style: TextStyle(
                                  color: Colors.deepOrangeAccent[100],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                "Vitamin A",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            color: Colors.deepOrangeAccent[100],
                            height: 60,
                            width: 1,
                          ),
                          Column(
                            children: [
                              Text(
                                "16",
                                style: TextStyle(
                                  color: Colors.deepOrangeAccent[100],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                "Vitamin B",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            color: Colors.deepOrangeAccent[100],
                            height: 60,
                            width: 1,
                          ),
                          Column(
                            children: [
                              Text(
                                "90",
                                style: TextStyle(
                                  color: Colors.deepOrangeAccent[100],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                "Water",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  height: 150,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent[100]!.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Breakfast",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            CustomRow(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return PoachedEgg();
                }));
              },
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXOWBP_eCemxP3TRP0f2kfQQtXybhLiVarOw&usqp=CAU",
              text1: "Poached Egg",
              text2: "Breakfast Time : 7:30",
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Lunch",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            CustomRow(
              onTap: () {},
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShMxtAHNcTB71U9iqssFZBKn0u55lzKzsriQ&usqp=CAU",
              text1: "Burger",
              text2: "Lunch Time : 7:30",
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Snacks",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            CustomRow(
              onTap: () {},
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKFSoSvTOsqdTKO5i4lQMVLPwA1MyR0W2cfQ&usqp=CAU",
              text1: "Lamonade",
              text2: "Snack Time : 7:30",
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Dinner",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            CustomRow(
              onTap: () {},
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4IYYmJmV2sRdwFLno39mI1Y5eBWhE1tygkQ&usqp=CAU",
              text1: "Pop Corn",
              text2: "Diner Time : 7:30",
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> customChip2List = [
  SizedBox(
    width: 10,
  ),
  CustomChip2(
    text1: "01",
    text2: "Sun",
  ),
  CustomChip2(
    text1: "02",
    text2: "Mon",
  ),
  CustomChip2(
    text1: "03",
    text2: "Tue",
  ),
  CustomChip2(
    text1: "04",
    text2: "Wed",
  ),
  CustomChip2(
    text1: "05",
    text2: "Thu",
  ),
  CustomChip2(
    text1: "06",
    text2: "Fri",
  ),
  CustomChip2(
    text1: "07",
    text2: "Sat",
  ),
  CustomChip2(
    text1: "08",
    text2: "Sun",
  ),
];
