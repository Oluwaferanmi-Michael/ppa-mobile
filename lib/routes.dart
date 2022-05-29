import 'package:flutter/material.dart';
import 'Screens/NavigationScreens/about.dart';
import 'Screens/NavigationScreens/contact.dart';
import 'Screens/NavigationScreens/home.dart';

Map<String, WidgetBuilder> routes = {
  '/home' : (context) => Home(),
  '/About' : (context) => About(),
  '/Contact': (context) => Contact(),
};