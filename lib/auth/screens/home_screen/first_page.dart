import 'package:cookify/widgets/custom_pics.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
                SizedBox(width: 15),
                Text(
                  "Hello Den,",
                  style: TextStyle(
                    color: Colors.deepOrangeAccent[100],
                    fontSize: 27,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 15),
                Text(
                  "Excited to cook something new today?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: 390,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.outdoor_grill_outlined,
                      color: Colors.deepOrangeAccent[100],
                      size: 70,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    """
You have 12 recipes that
you haven't tried yet
                                  """,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "See Recipes",
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.deepOrangeAccent[100],
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.deepOrangeAccent[100]!.withOpacity(0.4),
              ),
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                Container(
                  height: 350,
                  width: 390,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ7JMe0JSYZEFH0erBauXxY6JKK4tPJ8J2Tg&usqp=CAU",
                      ),
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.deepOrangeAccent[100]!.withOpacity(0.4),
                  ),
                ),
                Container(
                  height: 350,
                  width: 390,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.deepOrangeAccent[100]!,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Non Veg",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent[100]!.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Positioned(
                  top: 230,
                  left: 20,
                  child: Text(
                    """
Chicken Makhani
South Special
                """,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Positioned(
                  top: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Text(
                        "90 Recipes",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 20,
                        width: 1,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "1 Serving",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  "Trending Recipes",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomContainer(
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA_AFvLOObITqC0pw2yvjPZkohkEGLT5Dxdg&usqp=CAU",
                      text: "South",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomContainer(
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr0GcXMQ1TqlZuCZpakCAazKm4oHgZsjWSvw&usqp=CAU",
                      text: "Nonveg",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomContainer(
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2JUXLfzJT_4-b_5b9ZGCOzt600Kb0CsfRug&usqp=CAU",
                      text: "Chinise",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomContainer(
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfu9IVjLJ4wQVIQEbr_rSno-ZzFNoeqEbuhg&usqp=CAU",
                      text: "Gujrati",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomContainer(
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScw7Knyz2m4wpcDs6fKdeETB_BMhFefdeCYw&usqp=CAU",
                      text: "Punjabi",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomContainer(
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfveK_N_WleypIrhcZdpKc9PjjWnHpZpbcHg&usqp=CAU",
                      text: "Maxican",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomContainer(
                      imageUrl:
                          "https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content10735.jpg",
                      text: "Italian",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
