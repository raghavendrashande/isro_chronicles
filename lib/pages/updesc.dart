import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isro_chronicle/data.dart/updata.dart';

class updescpg extends StatelessWidget {
  const updescpg({super.key, required this.idx});

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
                        tag: upnames[idx],
                         child:Image.asset(upimgsrc[idx]),
                         ),
                      ),
                      Text(upnames[idx], style: GoogleFonts.bebasNeue(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 70),),
                      Text('Expected launch dates:'+updates[idx], style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.bold,fontSize:18)),
                      Text('Spacecraft: '+upsc[idx], style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.bold,fontSize:18)),
                      SizedBox(height: 18),
                      Text('Description:', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
                      Padding(
                        padding: const EdgeInsets.all(18),
                        child: Text(updesc[idx],style: TextStyle(color: Colors.white, fontSize: 18,),softWrap: true,),
                      )
                    ],
                  ),
                ),
              ),
      ),
         );
       }
}