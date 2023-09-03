import 'package:flutter/material.dart';
import 'package:isro_chronicle/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class eves extends StatelessWidget {
  const eves({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Container(
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                  children: [
                    GestureDetector(
                      onTap: () async {
                         Uri _url = Uri.parse('https://g.co/kgs/ibsZFT/');
                          if (await launchUrl(_url)) {
                               await launchUrl(_url);
                         } else {
                           throw 'Could not launch $_url';
                               }
                            }, 
                      child: evecard(name: 'Bengaluru space expo', date: 'Fri, 1 Sept - Tue, 5 Sept', venue: 'Bengaluru',description: 'BENGALURU SPACE EXPO 2023 happens in Bangalore, India Sep, 2023 focus on Measurement & Analysis Instruments. The cycle of the trade fair is , organize by ISRO (Indian Space Research Organisation) at Bangalore International Exhibition Centre (BIEC).',)),
                       GestureDetector(
                      onTap: () async {
                         Uri _url = Uri.parse('https://g.co/kgs/eq2ZdL');
                          if (await launchUrl(_url)) {
                               await launchUrl(_url);
                         } else {
                           throw 'Could not launch $_url';
                               }
                            }, 
                      child: evecard(name: 'Exploring the Cosmos', date: 'Thu, 12 - Sat, 14 Oct', venue: 'Bengaluru',description: 'The Indian Space Research Organisation (ISRO) is gearing up to host a three-day workshop on Space Situational Awareness & Space Traffic Management (SSA & STM). This informative event is tailored for Indian students, researchers, and faculty members and is scheduled to take place from October 12 to 14, 2023, at ISRO Headquarters in Bengaluru.',))
            ],
          )
        )
      )
    );
  }
}