// Adaptive Scaffold with bottom navigation bar
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class MainScaffold extends StatefulWidget {
  final List<Widget> pages;
  final List<BottomNavigationBarItem> bottomNavBarItems;

  const MainScaffold({
    Key? key,
    required this.pages,
    required this.bottomNavBarItems,
  }) : super(key: key);

  @override
  _MainScaffoldState createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return isCupertino
        ? CupertinoTabScaffold(
            tabBuilder: (context, index) => widget.pages[index],
            backgroundColor: Colors.white,
            tabBar: CupertinoTabBar(
              items: widget.bottomNavBarItems,
              iconSize: 20,
              activeColor: ProjectColors.brandColor,
              inactiveColor: ProjectColors.accentColor,
              currentIndex: _currentindex,
              backgroundColor: Colors.grey.shade50,
            ),
            resizeToAvoidBottomInset: true,
          )
        : Scaffold(
            body: widget.pages[_currentindex],
            backgroundColor: Colors.white,
            bottomNavigationBar: BottomNavigationBar(
              items: widget.bottomNavBarItems,
              onTap: (index) => setState(() => _currentindex = index),
              iconSize: 20,
              selectedItemColor: ProjectColors.brandColor,
              unselectedItemColor: ProjectColors.accentColor,
              currentIndex: _currentindex,
              showUnselectedLabels: true,
              selectedFontSize: 12,
            ),
            resizeToAvoidBottomInset: true,
          );
  }
}
