import 'package:cookify/auth/screens/home_screen/first_page.dart';
import 'package:cookify/auth/screens/meal/meal_plan.dart';
import 'package:cookify/auth/screens/meal/recipes.dart';
import 'package:cookify/auth/screens/settings.dart';
import 'package:cookify/widgets/custom_bar.dart';
import 'package:flutter/material.dart';

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
