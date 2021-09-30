import 'package:cookify/widgets/custom_actionchip.dart';
import 'package:flutter/material.dart';

import 'meal_plan.dart';

class PoachedEgg extends StatefulWidget {
  const PoachedEgg({Key? key}) : super(key: key);

  @override
  _PoachedEggState createState() => _PoachedEggState();
}

class _PoachedEggState extends State<PoachedEgg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return MealPlan();
                        }));
                      },
                      icon: Icon(
                        Icons.navigate_before,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 310,
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.deepOrangeAccent[100],
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Watercress Salad",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 21,
                    ),
                    Text(
                      "white onion ,fennel and watercress salad",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 18,
                    ),
                    Text(
                      " Nutritions",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 13,
                    ),
                    Column(
                      children: [
                        CustomActionchip(
                          text1: "250",
                          text2: "Calories",
                          text3: "Kcal",
                        ),
                        CustomActionchip(
                          text1: "35",
                          text2: "Carbo",
                          text3: "9",
                        ),
                        CustomActionchip(
                          text1: "6.8",
                          text2: "Protein",
                          text3: "9",
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoMtf356zM5RbLi2WcIaHUBrSITsyYsPkDeg&usqp=CAU",
                      ),
                      radius: 110,
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Ingredients",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 21,
                    ),
                    Text(
                      """
          2 cup peacans,divided
          1 tablespoon unsalted butter,melted
          1 1/2 tablespoon grated parmesan cheese(Optional)
          1 teaspoon sea salt
          1/2 teaspoon ground black paper
          1 tablespoon lemon juice(Optional)
                """,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Preparation",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 21,
                    ),
                    Text(
                      """
          Place the asparges into the mixing bowl, and
          drizzel with the olive oil.Toss to coat the
          spears,then sprinkle with parmesan cheese,
          garlic,salt and paper.Arrange the aspargus
          onto a baking sheet in a single layer.
          
          Bake in the preheated oven untill just tender,12
          to 15 minutes depending the thickness. Sprinkle
          with lemon juice.
          """,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 600,
            left: 140,
            child: SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  primary: Colors.deepOrangeAccent[100],
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.deepOrangeAccent[100],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Watch video",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
