import 'package:flutter/material.dart';
import 'package:peculiar_people_assembly/UI%20Components/color_icons.dart';

import '../../UI Components/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   title: Text('Sermons', style: headline1(context),),
      // ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: barColor(context)
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search by Date',
                    border: InputBorder.none
                  ),
                )),
                const SizedBox(height: 24),
      
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: ((context, index) => const SizedBox(height: 24,)),
                    itemCount: 24,
                    itemBuilder: (context, index) {
                      return VideoCard(
                        title: 'Sermon',
                        details: 'Lorem Impusm sit amet dolor consecutor',
                      );
                    },
                  ),
                )
            ],
          ),
          ),
      ),
    );
  }
}