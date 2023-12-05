// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class Socialicon extends StatelessWidget {
   Socialicon({
    super.key,
    required this.link,
    required this.imgsrc
    });
    String imgsrc;
    String link;

  @override
  Widget build(BuildContext context) {
    final Uri url= Uri.parse(link);
    return GestureDetector(
      child: Image.asset(imgsrc),
      onTap: (){
        launchUrl(url);
      },
    );
  }
}
class HomeNavBut extends StatelessWidget {
   HomeNavBut({
    super.key,
    required this.text,
    required this.fontsz,
    required this.ontapped
    });
    String text;
    double fontsz;
    VoidCallback ontapped;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: ontapped, 
          child: Text(
            text,
            style: GoogleFonts.raleway(
            color: Colors.white,
            fontSize: fontsz/3.5
        )
      ),
    );
  }
}