import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:peculiar_people_assembly/Screens/NavigationScreens/home.dart';

import 'NavigationScreens/about.dart';
import 'NavigationScreens/contact.dart';

class Navigation extends StatefulWidget {
  Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

 int _currentIndex = 0;
 final PageController _pageController = PageController();

 List<Widget> pages = [
   Home(),
   About(),
   Contact()
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (item) {
          _currentIndex = item;
          _pageController.animateToPage(item, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
        },
        items: [
          BottomNavyBarItem(
            icon: const Icon(IconlyLight.home),
            title: const Text('Sermon')),
          BottomNavyBarItem(
                icon: const Icon(IconlyLight.info_square), title: const Text('Sermon')),
          BottomNavyBarItem(
            icon: const Icon(IconlyLight.call),
            title: const Text('Sermon'))
        ]
      ),

      body: pages[_currentIndex],
    );
  }
}