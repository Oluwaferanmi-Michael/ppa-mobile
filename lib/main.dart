import 'package:flutter/material.dart';
import 'package:peculiar_people_assembly/Screens/navigation.dart';
import 'package:peculiar_people_assembly/routes.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'peculiar people assembly',
      debugShowCheckedModeBanner: false,
      home: Navigation(),
      routes: routes,
      
    );
  }
}