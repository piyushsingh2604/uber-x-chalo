import 'package:flutter/material.dart';
import 'package:uberapp/HomePages/HomePage.dart';
import 'package:uberapp/HomePages/Profile.dart';
import 'package:uberapp/HomePages/Services.dart';


class HomeNaviBar extends StatefulWidget {
  @override
  _HomeNaviBarState createState() => _HomeNaviBarState();
}

class _HomeNaviBarState extends State<HomeNaviBar> {
  int _currentIndex = 0;

  final List<Widget> _children = [    HomePage(),    Services(),    Profile(),  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.window_outlined),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
