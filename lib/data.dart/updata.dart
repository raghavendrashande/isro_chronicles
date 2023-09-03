import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:isro_chronicle/pages/updesc.dart';
import 'package:isro_chronicle/widgets.dart';

class updata extends StatelessWidget {
  const updata({super.key});

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
          child: MasonryGridView.builder(
            crossAxisSpacing: 5,
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                scrollDirection: Axis.vertical,
                itemCount: upnames.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => updescpg(idx: index),));
           },
                    child: upcard(
                      imagePath: upimgsrc[index], 
                      name:upnames[index],
                      idx: index,
                      color:Color.fromARGB(255,0,0,0)
                ),
              );
            },
          ),
        ),
      ),  
    );
  }
}

List upnames = [
  'X-ray Polarimeter Satellite',
  'Gaganyaan 1',
  'Gaganyaan 2',
  'NISAR',
  'Shukrayaan 1',
  'Mangalyaan 2'
];
List updates = [
  '2023',
  'Late 2023 or Mid- 2024',
  '2023-2024',
  'January 2024',
  'December 2024',
  '2024'
];
List upsc = [
  'Space observatory',
  'Crewed',
  'Crewed',
  'SAR satellite',
  'Venus orbiter',
  'Mars orbiter'
];
List upimgsrc = [
    'images/up/xp.jpg',
    'images/up/gy.png',
    'images/up/gy2.jpg',
    'images/up/nisar.jpg',
    'images/up/sy.jpg',
    'images/up/mom.jpg',
];
List updesc = [
  'The X-ray Polarimeter Satellite (XPoSat) is a ISRO planned space observatory to study polarization of cosmic X-rays. It is planned to be launched in 2023 on a Small Satellite Launch Vehicle (SSLV) and to provide a service time of at least five years. XPoSat will study the 50 brightest known sources in the universe, including pulsars, black hole X-ray binaries, active galactic nuclei, and non-thermal supernova remnants.',
  'Gaganyaan ("Orbital Vehicle") is an Indian crewed orbital spacecraft (jointly made by ISRO and HAL) intended to be the basis of the Indian Human Spaceflight Programme. The spacecraft is being designed to carry three people, and a planned upgraded version will be equipped with rendezvous and docking capability. This will be the first of two flight tests prior to the inaugural crewed mission.',
  'Second of two flight tests prior to the inaugural crewed mission.',
  'NASA-ISRO Synthetic Aperture Radar (NISAR) is a joint project between NASA and ISRO to co-develop and launch a dual-frequency synthetic aperture radar satellite to be used for remote sensing. It is notable for being the first dual-band radar imaging satellite',
  'The Indian Venus orbiter mission is a planned orbiter to Venus by the Indian Space Research Organization (ISRO) to study the atmosphere of Venus.',
  'Mars Orbiter Mission 2 (MOM 2) also called Mangalyaan 2 is India\'s second interplanetary mission planned for launch to Mars by the Indian Space Research Organization (ISRO) in the 2021–2022 time frame. It will consist of an orbiter, as said by ISRO chairman, K. Sivan in an interview, but chances were that it will also include a lander and a rover but later it was fully confirmed that it will an orbiter mission only',
];
