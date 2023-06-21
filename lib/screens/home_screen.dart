import 'package:first_cry_flutter/screens/profile_screen.dart';
import 'package:first_cry_flutter/screens/shopping_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "HomeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTabIndex = 0;

  final List<Widget> _children = [
    const ShoppingScreen(),
    Container(),
    Container(),
    const ProfileScreen(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentTabIndex],
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        activeColor: Colors.deepOrangeAccent,
        iconSize: 26.0,
        currentIndex: currentTabIndex,
        onTap: (index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Shopping'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.play_circle), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart), label: 'Parenting'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bars), label: 'Menu'),
        ],
      ),
    );
  }
}
