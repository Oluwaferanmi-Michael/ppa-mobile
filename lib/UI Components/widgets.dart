import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:peculiar_people_assembly/UI%20Components/color_icons.dart';


class CustomIcon extends StatelessWidget {
  final Color? color;
  final IconData? icon;
  final Color? iconColor;
  const CustomIcon({
    this.color,
    this.icon,
    this.iconColor,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: color
      ),
      child: Icon(icon, color: iconColor,),
    );
  }
}

class VideoCard extends StatelessWidget {
  String? title;
  String? details;

  VideoCard({
    this.details,
    this.title,
    Key? key
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          
            
              Image.asset('3011.png'),
          
          const SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title!, style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                      ),),
                    Text(details!)
                  ],
                ),
                CustomIcon(
                  color: blueAccent,
                  iconColor: blue,
                  icon: IconlyLight.play,
                )
              ],
            ),
          )
        ]
      )
    );
  }
}
