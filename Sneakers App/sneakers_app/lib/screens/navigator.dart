// ignore_for_file: prefer_final_fields, prefer_const_constructors, use_key_in_widget_constructors

import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sneakers_app/constanst.dart';
import 'package:sneakers_app/screens/bag/bag_screen.dart';
import 'package:sneakers_app/screens/home/home_screen.dart';
import 'package:sneakers_app/screens/profile/profile_screen.dart';

class MainNavigator extends StatefulWidget {
  
  @override
  _MainNavigatorState createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  PageController _pageController = PageController();

  int _selectedIndex = 0;
  List<Widget> _screen = [
    HomeScreen(),
    MyBagScreen(),
    Profile(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: materialButtonColor,
        strokeColor: materialButtonColor,
        unSelectedColor: Color(0xffacacac),
        backgroundColor: Colors.white,
        items: [
          CustomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
          ),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
