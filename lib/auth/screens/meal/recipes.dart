import 'package:cookify/widgets/custom_chip.dart';
import 'package:flutter/material.dart';

class Recipes extends StatefulWidget {
  const Recipes({Key? key}) : super(key: key);

  @override
  _RecipesState createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Colors.grey[800],
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  child: Icon(
                    Icons.restaurant_menu,
                    color: Colors.deepOrangeAccent[100],
                  ),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.deepOrangeAccent[100]!.withOpacity(0.4),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            SizedBox(width: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                child: Row(
                  children: chipList,
                ),
              ),
            ),
            RecipeCard(
              ingredient: "2 ingredients",
              time: "50",
              rate: "100",
              recipeName: "Cacoa maca walnut milk",
              discription: "Easy,quick and yet so delicious!",
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdA9dJMDcnvMCOeLLOMC1l7jpj9rC3w0UB0g&usqp=CAU",
            ),
            SizedBox(height: 10),
            RecipeCard(
              ingredient: "4 ingredients",
              time: "30",
              rate: "70",
              recipeName: "Orange juice",
              discription: "Nutritious and healthy drink",
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4hqgvgTU3rw6KV24VgdlnQ1WfoVZlMuOMgg&usqp=CAU",
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

List<Widget> chipList = [
  SizedBox(
    width: 15,
  ),
  CustomChip(
    icon: Icons.book,
    text: "All",
    width: 70,
  ),
  CustomChip(
    icon: Icons.fastfood,
    text: "Fastfood",
    width: 80,
  ),
  CustomChip(
    icon: Icons.local_pizza,
    text: "Pizza",
    width: 70,
  ),
  CustomChip(
    icon: Icons.cake,
    text: "Cake",
    width: 70,
  ),
  CustomChip(
    icon: Icons.icecream,
    text: "Ice Cream",
    width: 90,
  ),
];

class RecipeCard extends StatelessWidget {
  final String? recipeName;
  final String? url;
  final String? discription;
  final String? rate;
  final String? time;
  final String? ingredient;

  const RecipeCard({
    Key? key,
    this.url,
    this.recipeName,
    this.discription,
    this.rate,
    this.time,
    this.ingredient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  url!,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            recipeName!,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          Text(
            discription!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(
                Icons.star_border,
                color: Colors.white,
              ),
              Text(
                rate!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.timer,
                color: Colors.white,
              ),
              Text(
                time!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                ingredient!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
