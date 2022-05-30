import 'package:flutter/material.dart';
import 'package:peculiar_people_assembly/UI%20Components/color_icons.dart';
import 'package:peculiar_people_assembly/UI%20Components/copy.dart';

class About extends StatefulWidget {
  About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us', style: TextStyle(color: greenAlt),),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal:24.0, vertical: 12),
          child: Column(
      
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Flexible(child: Text(aboutUs)),
              
              const SizedBox(
                height: 24
              ),
              
              Row(
                children: [
                  const Text('Services'),
              
                  Container(
                    margin: const EdgeInsets.only(left: 12),
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: greenAccent,
                      border: Border.all(
                        color: green,
                      ),
                      borderRadius: BorderRadius.circular(4)
                    ),
                    child: const Text('MST', style: TextStyle(fontWeight: FontWeight.bold)),
                  )
                  ]
                  ),
      
                  const SizedBox(
                  height: 12,
                ),
              
              Row(
                
                children: [
                  ServiceInfo(
                    title: 'Sundays',
                    info: '10:30 - 12:00',
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                  const SizedBox(width: 12,),
                  Flexible(
                    child: ServiceInfo(
                        title: 'Wednesdays',
                        info: 'Bible Study',
                        width: MediaQuery.of(context).size.width
                      ),
                  ),
                ],
              ),
              const SizedBox(
                  height: 12,
                ),
              ServiceInfo(
                  title: '\"I Decree\”',
                  info: 'Every 3rd Saturday of the month',
                  width: MediaQuery.of(context).size.width,
                ),
                const SizedBox(
                  height: 12,
                ),
              ServiceInfo(
                    title: 'Hour of Pentecost',
                    info: 'Every Last Friday of the month',
                    width: MediaQuery.of(context).size.width,
                  ),
                  const SizedBox(
                  height: 12,
                ),
              ServiceInfo(
                    title: 'Holy Communion Service',
                    info: 'Every First Wednesday of the month',
                    width: MediaQuery.of(context).size.width,
                  ),
      
                  const SizedBox(
                  height: 24,
                ),
              
              const Text('Mission', style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
      
              const SizedBox(
                  height: 12,
                ),
              
              const Flexible(child: Text(mission))
            ],
          ),
        ),
      )
    );
  }
}


class ServiceInfo extends StatelessWidget {
  String? title;
  String? info;
  double? width;
  ServiceInfo({
    this.info,
    this.title,
    this.width,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: grey,
        borderRadius: BorderRadius.circular(12)
      ),
      child: SizedBox(
         width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title!, style: const TextStyle(fontWeight: FontWeight.bold),),
            Text(info!)
          ]),
      ),
    );
  }
}