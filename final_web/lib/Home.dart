import 'package:final_web/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    double font2= width>550?105:60;
    double font1= width>550?60:40;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                opacity: 0.5,
                image: AssetImage('assets/desk.png'),
                fit: BoxFit.cover,
              )
            ),
          ),
            Padding(
            padding: EdgeInsets.symmetric(horizontal: width>350?30:10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  runAlignment: WrapAlignment.start,
              children:[
                HomeNavBut(
                  text: 'Home', 
                  fontsz: font1, 
                  ontapped: () {  },
                  ),
               HomeNavBut(
                  text: 'About', 
                  fontsz: font1, 
                  ontapped: () {  },
                  ),
                  HomeNavBut(
                  text: 'Stats', 
                  fontsz: font1, 
                  ontapped: () {  },
                  ),
                  HomeNavBut(
                  text: 'Contact', 
                  fontsz: font1, 
                  ontapped: () {  },
                  ),
                ]
              ),
            ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('RAGHAVENDRA', 
                  overflow: TextOverflow.fade,
                  style:GoogleFonts.adventPro(
                    fontSize: font1,
                    fontWeight: FontWeight.w100
                    )
                  ),
                  Text('HANDE',
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.raleway(
                    fontSize: font2,
                    fontWeight: FontWeight.w900
                    ),
                  ),
                  Text('A n d r o i d    d e v e l o p e r',
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.raleway(
                      fontSize: font1/2
                    ),
                  ),
                  const SizedBox(height: 20),
                  OutlinedButton(
                    style:OutlinedButton.styleFrom(
                      side:  const BorderSide(
                        width: 1.2,
                        color: Colors.white
                      ),
                      backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                      shadowColor: const Color.fromARGB(85, 255, 255, 255)
                    ),
                    onPressed: (){
                      launchUrl(Uri.parse('https://docs.google.com/document/d/1UBPnDmJyG9qAoeTKQqZmmiaxeUaiRkhr9lpiE0fiM6g/edit?usp=sharing'));
                    }, 
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 15
                      ),
                      child:Text('Download resume',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: font1/3
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Wrap(
                  spacing: 10,
                  children: [
                    Socialicon(
                      link: 'mailto:raghavendrahande@gmail.com', 
                      imgsrc: 'assets/email.png'
                      ),
                    Socialicon(
                      link: 'https://github.com/raghavendrashande', 
                      imgsrc: 'assets/github.png'
                      ),
                      Socialicon(
                      link: 'https://instagram.com/raghavendra__hande', 
                      imgsrc: 'assets/instagram.png'
                      ),
                      Socialicon(
                      link: 'https://www.linkedin.com/in/raghavendra-hande-404992217', 
                      imgsrc: 'assets/linkedin.png'
                      ),
                  ],
                ),
              )
             ],
            ),
          ),
        ],
      ),
    );
  }
}