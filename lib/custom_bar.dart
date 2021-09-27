import 'package:flutter/material.dart';

typedef OnPageChangeCallBack = void Function(int);

class CustomBar extends StatefulWidget {
  final OnPageChangeCallBack onPageChange;

  CustomBar({Key? key, required this.onPageChange}) : super(key: key);

  @override
  _CustomBarState createState() => _CustomBarState();
}

class _CustomBarState extends State<CustomBar> {
  int? selectedPage;

  int? selectedIndex = 0;
  onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onPageChange(index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onItemTapped,
      selectedItemColor: Colors.deepOrangeAccent[100],
      currentIndex: selectedIndex!,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.grey[900],
          activeIcon: Icon(
            Icons.home,
            color: Colors.deepOrangeAccent[100],
          ),
          label: "Home",
          icon: Icon(
            Icons.home_outlined,
            color: Colors.deepOrangeAccent[100],
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.menu_book,
            color: Colors.deepOrangeAccent[100],
          ),
          backgroundColor: Colors.grey[900],
          label: "Showcase",
          icon: Icon(
            Icons.menu_book_outlined,
            color: Colors.deepOrangeAccent[100],
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.free_breakfast,
            color: Colors.deepOrangeAccent[100],
          ),
          backgroundColor: Colors.grey[900],
          label: "Meal",
          icon: Icon(
            Icons.fastfood,
            color: Colors.deepOrangeAccent[100],
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.account_box,
            color: Colors.deepOrangeAccent[100],
          ),
          backgroundColor: Colors.grey[900],
          label: "Settings",
          icon: Icon(
            Icons.account_box_outlined,
            color: Colors.deepOrangeAccent[100],
          ),
        ),
      ],
    );
  }
}
