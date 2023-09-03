import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:isro_chronicle/widgets.dart';
import 'package:isro_chronicle/pages/lvdescpage.dart';

class lvdata extends StatelessWidget {
  const lvdata({super.key});

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
                itemCount: allveh.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => lvdesc(idx: index),));
            },
                    child: lvcard(imagePath: allveh[index][0], name:allveh[index][1],idx: index,));
                },
              ),
        ),
      ),
      
    );
  }
}
List allveh=[
  ['images/launch vehicles/aslv.jpg','ASLV'],
  ['images/launch vehicles/gslv.jpg','GSLV'],
  ['images/launch vehicles/hrlv.jpg','HRLV'],
  ['images/launch vehicles/lvm.jpg','LVM'],
  ['images/launch vehicles/pslv.jpg','PSLV'],
  ['images/launch vehicles/slv3.jpg','SLV 3'],
  ['images/launch vehicles/sslv.jpg','SSLV'],
];
List descriptions = [
  'The Augmented Satellite Launch Vehicle (ASLV) Programme was designed to augment the payload capacity to 150 kg, thrice that of SLV-3, for Low Earth Orbits (LEO). While building upon the experience gained from the SLV-3 missions, ASLV proved to be a low cost intermediate vehicle to demonstrate and validate critical technologies, that would be needed for the future launch vehicles like strap-on technology, inertial navigation, bulbous heat shield, vertical integration and closed loop guidance.\nUnder the ASLV programme four developmental flights were conducted. The first developmental flight took place on March 24, 1987 and the second on July 13, 1988. The third developmental flight, ASLV-D3 was successfully launched on May 20, 1992, when SROSS-C (106 kg) was put into an orbit of 255 x 430 km. ASLV-D4, launched on May 4, 1994, orbited SROSS-C2 weighing 106 kg. It had two payloads, Gamma Ray Burst (GRB) Experiment and Retarding Potentio Analyser (RPA) and functioned for seven years.',
  'Geosynchronous Satellite Launch Vehicle Mark II (GSLV Mk II) is the launch vehicle developed by India, to launch communication satellites in geo transfer orbit using cryogenic third stage. Initially Russian GK supplied cryogenic stages were used. Later cryogenic stage was indigenously developed and inducted in Jan 2014 from GSLV D5 onwards. This operational fourth generation launch vehicle is a three stage vehicle with four liquid strap-ons. The flight proven indigenously developed Cryogenic Upper Stage (CUS), forms the third stage of GSLV Mk II. From January 2014, the vehicle has achieved six consecutive successes',
  'Isro has been making quiet progress on the readiness for India\'s first human spaceflight mission — Gaganyaan — with several hurdles relating to launch vehicle, orbital module (that will carry the crew and service modules), crew escape system, environmental control life support system (ECLSS) having been overcome. Work on modifications of the spaceport too has progressed.\nThe successful static test of the human-rated solid rocket booster (HS200) earlier this month is one of the milestones for Isro in this direction and the agency is now in the process of preparing for key tests of other engines/stages of the GSLV-Mk3, which, once human-rated and ready for Gaganyaan, will be called human-rated launch vehicle (HRLV).',
  'LVM3 is configured as a three stage vehicle with two solid strap-on motors (S200), one liquid core stage (L110) and a high thrust cryogenic upper stage (C25). The S200 solid motor is among the largest solid boosters in the world with 204 tonnes of solid propellant. The liquid L110 stage uses a twin liquid engine configuration with 115 tonnes of liquid propellant, while the C25 Cryogenic upper stage is configured with the fully indigenous high thrust cryogenic engine (CE20) with a propellant loading of 28 tons. The overall length of the vehicle is 43.5 m with a gross lift-off weight of 640 tonnes and a 5m-diameter payload fairing.\nLVM3 is the new heavy lift launch vehicle of ISRO for achieving a 4000 kg spacecraft launching capability to GTO (Geosynchronous Transfer Orbit) in a cost effective manner. LVM3 is a three stage launch vehicle consisting of two solid propellant S200 strap-ons and core stages comprising of L110 liquid stage, C25 cryogenic stage, the equipment bay (EB) and the Encapsulated assembly (EA). EA comprises of the spacecraft, Payload Adaptor (PLA) and the Payload fairing (PF). With a lift-off mass of 640 tons, this 43.5 m tall three-stage launch vehicle gives ISRO full self-reliance in launching heavier communication satellites that weigh up to 4000 kg in GTO. The vehicle takes off with the simultaneous ignition of the two S200 boosters. The core stage (L110) is ignited at about 113s through the flight, during the firing of the S200 stages. Both S200 motors burn for about 134s and the separation occur at 137s. The payload fairing is separated at an altitude of 115 km and at about 217s during L110 firing. The L110 burnout and separation and C25 ignition occur at 313s. The spacecraft is injected into a GTO (Geosynchronous Transfer Orbit) orbit of 180x36000 km at a nominal time of 974s.',
  'Polar Satellite Launch Vehicle (PSLV) is the third generation launch vehicle of India. It is the first Indian launch vehicle to be equipped with liquid stages. After its first successful launch in October 1994, PSLV emerged as a reliable and versatile workhorse launch vehicle of India. The vehicle has launched numerous Indian and foreign customer satellites. Besides, the vehicle successfully launched two spacecraft \"Chandrayaan-1 in 2008 and Mars Orbiter Spacecraft in 2013\"that later travelled to Moon and Mars respectively. Chandrayaan-1 and MOM were feathers in the hat of PSLV. The launch of PSLV-C48 marks the 50th Launch of PSLV. Besides, the vehicle successfully launched two spacecraft \" Chandrayaan-1 in 2008 and Mars Orbiter Spacecraft in 2013"that later traveled to Moon and Mars respectively.PSLV earned its title \'the workhorse of ISRO\' through consistently delivering various satellites into low earth orbits, particularly the IRS Series of satellites.\nDue to its unmatched reliability, PSLV has also been used to launch various satellites into Geosynchronous and Geostationary orbits, like satellites from the IRNSS Constellation.\nThe PSLV is capable of placing multiple payloads into orbit, thus multi-payload adaptors are used in the payload fairing. The payload performance of the vehicle and mission flexibility is evident from the challenging missions where multi-orbit and multi-satellite missions are accomplished. The long string of consecutive successes and multi-satellite launch capability has reinforced the status of PSLV as a reliable, versatile and affordable launcher in the global market.',
  'Satellite Launch Vehicle-3 (SLV-3) was India\'s first experimental satellite launch vehicle, which was an all solid, four stage vehicle weighing 17 tonnes with a height of 22m and capable of placing 40 kg class payloads in Low Earth Orbit (LEO (Low Earth Orbit) ).\nSLV-3 was successfully launched on July 18, 1980 from Sriharikota Range (SHAR), when Rohini satellite, RS-1, was placed in orbit, thereby making India the sixth member of an exclusive club of space-faring nations . SLV-3 employed an open loop guidance (with stored pitch programme) to steer the vehicle in flight along a pre-determined trajectory. The first experimental flight of SLV-3, in August 1979, was only partially successful. Apart from the July 1980 launch, there were two more launches held in May 1981 and April 1983, orbiting Rohini satellites carrying remote sensing sensors.\nThe successful culmination of the SLV-3 project showed the way to advanced launch vehicle projects such as the Augmented Satellite Launch Vehicle (ASLV), Polar Satellite Launch Vehicle (PSLV) and the Geosynchronous satellite Launch Vehicle (GSLV).',
  'Small Satellite Launch Vehicle (SSLV) is a 3 stage Launch Vehicle configured with three Solid Propulsion Stages and liquid propulsion based Velocity Trimming Module (VTM) as a terminal stage. SSLV is 2m in diameter and 34m in length with lift off weight of ~120 tonnes. SSLV is capable of launching ~500kg satellite in 500km planar orbit from SDSC/SHAR. The key features of SSLV are Low cost, with low turn-around time, flexibility in accommodating multiple satellites, Launch on demand feasibility, minimal launch infrastructure requirements, etc.',
];