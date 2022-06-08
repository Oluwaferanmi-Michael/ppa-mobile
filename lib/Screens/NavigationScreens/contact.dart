import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:peculiar_people_assembly/UI%20Components/copy.dart';
import 'package:peculiar_people_assembly/UI%20Components/widgets.dart';
import 'package:peculiar_people_assembly/services/app_permissions.dart';

import '../../UI Components/color_icons.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

// @override
// void initState() {
//   super.initState();
//   phoneCall(url: phoneNumber);
// }

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: SafeArea(
        top: true,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(phoneNumber, style: bodyText1(context)!.copyWith(fontSize: 32),),

                const SizedBox(height: 12,),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  CustomIcon(
                    onPressed: () async {
                      phoneCall();
                    },
                    color: blueAccent,
                    icon: IconlyLight.call,
                    iconColor: blue,
                  ),
      
                  const SizedBox(
                        width: 24,
                      ),
      
                  CustomIcon(
                    onPressed: () async => sms(),
                        color: greenAccent,
                        icon: IconlyLight.chat,
                        iconColor: green,
                      )
                ],),
      
                const SizedBox(
                    height: 12,
                  ),
      
                Text(email, style: bodyText1(context),),
      
                  const SizedBox(
                    height: 12,
                  ),
      
                CustomIcon(
                  onPressed: () async => sendEmail(),
                    color: pinkAccent,
                    icon: IconlyLight.message,
                    iconColor: pink,
                  ),
      
                const SizedBox(
                    height: 24,
                  ),
      
                Text(
                  contactUs,
                  textAlign: TextAlign.center,
                  style: bodyText1(context)!.copyWith(),
                ),
      
                const SizedBox(
                    height: 24,
                  ),
      
                Text('Find us here', style: bodyText2(context),),
      
                const SizedBox(
                    height: 12,
                  ),
      
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      24
                    ),
                    color: grey,
      
                  ),
                ),
      
                const SizedBox(
                    height: 12,
                  ),
      
                Text(address, style: bodyText1(context),),
      
                const SizedBox(
                    height: 32,
                  ),
      
                Text('Rccg Peculiar People-Assembly Strathmore', style: bodyText1(context),)
              ],
            ),
          ),
        ),
      )
    );
  }
}