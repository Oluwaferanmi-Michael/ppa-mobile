import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:peculiar_people_assembly/UI%20Components/copy.dart';
import 'package:peculiar_people_assembly/UI%20Components/widgets.dart';

import '../../UI Components/color_icons.dart';

class Contact extends StatefulWidget {
  Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Contact Us',
            style: TextStyle(color: pink),
          ),
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Text(phoneNumber),

              SizedBox(height: 12,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                CustomIcon(
                  color: blueAccent,
                  icon: IconlyLight.call,
                  iconColor: blue,
                ),

                SizedBox(
                      width: 24,
                    ),

                CustomIcon(
                      color: greenAccent,
                      icon: IconlyLight.chat,
                      iconColor: green,
                    )
              ],),

              SizedBox(
                  height: 12,
                ),

              Text(email),

                SizedBox(
                  height: 12,
                ),

              CustomIcon(
                  color: pinkAccent,
                  icon: IconlyLight.message,
                  iconColor: pink,
                ),

              SizedBox(
                  height: 24,
                ),

              Text(
                contactUs
              ),

              SizedBox(
                  height: 24,
                ),

              Text('Find us here'),

              SizedBox(
                  height: 12,
                ),

              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    24
                  ),
                  color: grey,

                ),
              ),

              SizedBox(
                  height: 12,
                ),

              Text(''),

              Text('Rccg Peculiar People-Assembly Strathmore')
            ],
          ),
        ),
      )
    );
  }
}