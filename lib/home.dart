import 'package:cookify/custom_bar.dart';
import 'package:cookify/recipes.dart';
import 'package:cookify/settings.dart';
import 'package:flutter/material.dart';
import 'first_page.dart';
import 'meal_plan.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController myPage = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          FirstPage(),
          Recipes(),
          MealPlan(),
          Settings(),
        ],
        controller: myPage,
      ),
      bottomNavigationBar: CustomBar(
        onPageChange: (int index) {
          myPage.jumpToPage(index);
        },
      ),
    );
  }
}
