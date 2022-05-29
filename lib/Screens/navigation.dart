import 'package:peculiar_people_assembly/UI%20Components/color_icons.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:flutter/material.dart';
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
 PersistentTabController _pageController = PersistentTabController(initialIndex: 0);

 List<Widget> pages = [
   Home(),
   About(),
   Contact()
 ];

 List<PersistentBottomNavBarItem> barItem = [
   PersistentBottomNavBarItem(
      icon: home,
      title: 'Sermons',
      activeColorPrimary: blue,
      activeColorSecondary: blueAccent
     ),
     PersistentBottomNavBarItem(
      icon: about,
      title: 'About Us',
      activeColorPrimary: green,
      activeColorSecondary: greenAccent
    ),
    PersistentBottomNavBarItem(
      icon: contact,
      title: 'Contact Us',
      activeColorPrimary: pink,
      activeColorSecondary: pinkAccent
    )
 ];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _pageController,
      navBarStyle: NavBarStyle.style1,
      confineInSafeArea: true,
      screens: pages,
      items: barItem,
      
    );
  }
}