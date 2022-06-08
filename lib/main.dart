import 'package:flutter/material.dart';
import 'package:peculiar_people_assembly/Screens/navigation.dart';
import 'package:peculiar_people_assembly/UI%20Components/color_icons.dart';
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
      themeMode:ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const Navigation(),
      routes: routes,
      
    );
  }
}