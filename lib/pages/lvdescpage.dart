import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isro_chronicle/data.dart/lvdata.dart';
import 'package:url_launcher/url_launcher.dart';

class lvdesc extends StatelessWidget {
  const lvdesc({super.key, required this.idx});

  final int idx;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover
          )
        ),
      ),
      ),
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Hero(
                        tag: idx,
                         child:Image.asset(allveh[idx][0]),
                         ),
                      ),
                      Text(allveh[idx][1], style: GoogleFonts.bebasNeue(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 70),),
                      Text('Description:', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
                      Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          children: [
                            Text(descriptions[idx],style: TextStyle(color: Colors.white, fontSize: 18,),softWrap: true,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Need more information?',style: TextStyle(color: Colors.white, fontSize:18)),
                                  GestureDetector(
                                    onTap: () async {
                                           Uri _url = Uri.parse(moreinfo[idx]);
                                           if (await launchUrl(_url)) {
                                           await launchUrl(_url);
                                           } else {
                                           throw 'Could not launch $_url';
                                           }
                                         }, 
                                    child: Text('Click here.',style: TextStyle(color: Colors.blue, fontSize:18)))
                                ],
                              ),
                          ],
                        ),
                        
                      )
                    ],
                  ),
                ),
              ),
      ),
         );
       }
}