import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:isro_chronicle/data.dart/updata.dart';

class MyAppBar extends StatelessWidget {
  final String title;

  MyAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style: GoogleFonts.bebasNeue(
                  fontSize: 52,
                  color: Color.fromARGB(245, 255, 255, 255)
                ),
              ),
            ),
          ],
        ),
      
    );
  }
}
class MyTabBar extends StatelessWidget {
  final List tabOptions; 
  MyTabBar({
    Key? key,
    required this.tabOptions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          TabBar(
            unselectedLabelStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
               ),
            unselectedLabelColor: Colors.grey,
            labelStyle: GoogleFonts.bebasNeue(
              fontSize: 32,
               ),
            isScrollable: true,
            tabs: [
              Tab(
                child: Text(
                  tabOptions[0][0],
                ),
              ),
              Tab(
                child: Text(
                  tabOptions[1][0],
                ),
              ),
              Tab(
                child: Text(
                  tabOptions[2][0],
                ),
              ),
               Tab(
                child: Text(
                  tabOptions[3][0],
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                tabOptions[0][1],
                tabOptions[1][1],
                tabOptions[2][1],
                tabOptions[3][1],
              ],
            ),
          )
        ],
      
    );
  }
}

class lvcard extends StatelessWidget {
  final String imagePath;
  final String name;
  final int idx;
  const lvcard({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.idx
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Hero(
                tag: idx,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(name,
                    style: GoogleFonts.bebasNeue(      
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 28
               ),
             ),
           ),
        ],
      ),     
    );
  }
}

class upcard extends StatelessWidget {
  final String imagePath;
  final String name;
  final int idx;
  final Color color;
  const upcard({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.idx,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Hero(
                tag: upnames[idx],
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(name,
                            style: GoogleFonts.bebasNeue(      
                              fontWeight: FontWeight.bold,
                              color: color,
                              fontSize: 20
                    ),
                  ),
                ],
              ),
            ),
          ),        
        ],
      ), 
    );
  }
}


class evecard extends StatelessWidget {
  final String name;
  final String date;
  final String venue;
  final String description;
  const evecard({
    Key? key,
    required this.name,
    required this.date,
    required this.venue,
    required this.description
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Icon(Icons.rocket_launch_sharp,color: Colors.white,size: 85),
                          Text(
                            name,
                            style: GoogleFonts.bebasNeue(      
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30),),
                              Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                color: Color.fromARGB(95, 254, 253, 253),
                                child:Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.calendar_month,color: Colors.white,),
                                      Text(date,style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                      Icon(Icons.location_pin,color: Colors.white),
                                      Text(venue,style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                    ]
                                  ),
                                ),
                                Text(description,style:TextStyle(color: Colors.white,fontWeight:FontWeight.bold))
                    ]
                  )
               ),
            ),
          ),
        ]
      )
    );
  }
}
