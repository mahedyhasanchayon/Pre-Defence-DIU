import 'package:flutter/material.dart';

import 'components/nav_items.dart';
import 'components/nav_pages.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
                    unselectedLabelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    fixedColor: Colors.orangeAccent,
          currentIndex: _currentIndex,
          onTap: (int newIndex) => setState(() {
            _currentIndex = newIndex;
          }),
          items: navItems,
        ),
      );
}