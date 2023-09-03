import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:isro_chronicle/data.dart/updata.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  final VoidCallback onSearchTap;

  MyAppBar({
    Key? key,
    required this.onSearchTap,
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
            GestureDetector(
              onTap: onSearchTap,
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(16),
                  color: Color.fromARGB(0, 66, 66, 66),
                ),
                child: Icon(
                  Icons.search,
                  size: 36,
                  color: Colors.white,
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
                      fontSize: 28),),
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
                              fontSize: 20),),
                        ],
                      ),
                  ),
                  ),
                
        ],
      ),
      
    );
  }
}
