import 'package:flutter/material.dart';
import 'package:isro_chronicle/tabs/tabs.dart';
import 'package:isro_chronicle/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  List taboptions = [
    ['Launch vehicles',launchtab()],
    ['Satellites',satstab()],
    ['Upcoming missions',uptab()],
    ['Events',eventtab()],
  ];
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 4, 
        child: Scaffold(
           body: Container(
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover
          )
        ),
            child: ListView(
              children: [
                MyAppBar(
                  title: 'Explore'
                  ),
                  SizedBox(
                    height: 600,
                    child: MyTabBar(tabOptions: taboptions),
              )
            ],
          ),
        ),
      )
    );
  }
}

