// HomePage after login/signup
import 'package:flutter/material.dart';

import 'scaffolds/main_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScaffold(pages: _pages, bottomNavBarItems: _bottomNavBarItems);
  }
}

final _pages = <Widget>[
  Container(color: Colors.deepPurpleAccent), // Home
  Container(color: Colors.orange), // Notes
  Container(color: Colors.red), // Courses
  Container(color: Colors.green), // College
  Container(color: Colors.blue), // More
];

final _bottomNavBarItems = [
  BottomNavigationBarItem(
    label: "Home",
    icon: Material(child: Icon(Icons.home)),
  ),
  BottomNavigationBarItem(
    label: "Notes",
    icon: Material(child: Icon(Icons.notes)),
  ),
  BottomNavigationBarItem(
    label: "Courses",
    icon: Material(child: Icon(Icons.book)),
  ),
  BottomNavigationBarItem(
    label: "College",
    icon: Material(child: Icon(Icons.school)),
  ),
  BottomNavigationBarItem(
    label: "More",
    icon: Material(child: Icon(Icons.more_vert)),
  ),
];
