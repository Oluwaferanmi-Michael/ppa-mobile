import 'package:peculiar_people_assembly/UI%20Components/color_icons.dart';

import 'package:flutter/material.dart';
import 'package:peculiar_people_assembly/Screens/NavigationScreens/home.dart';

import 'NavigationScreens/about.dart';
import 'NavigationScreens/contact.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

 int _currentIndex = 0;

 void onSelected(int index) {
   setState(() {
     _currentIndex = index;
   });
 }

 colorChange(Color? color){
   switch (_currentIndex) {
     case 1:
      color =  greenAccent;
       break;
     default:
   }
 }
 

 List<Widget> pages = const [
   Home(),
   About(),
   Contact()
 ];

 List<BottomNavigationBarItem> barItem = [
   BottomNavigationBarItem(
      icon: home,
      label: 'Sermons',
      backgroundColor: blueAccent
     ),
     BottomNavigationBarItem(
      icon: about,
      label: 'About Us',
      backgroundColor: greenAccent
    ),
    BottomNavigationBarItem(
      icon: contact,
      label: 'Contact Us',
      backgroundColor: pinkAccent
    )
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: blue,
        onTap: onSelected,
        items: barItem,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
      ),
      body: pages[_currentIndex]
    );
  }
}