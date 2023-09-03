import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class satsdata extends StatelessWidget {
   satsdata({super.key});

  List<thesat> allsats=[];
  
  Future getsatinfo() async{
    var response= await http.get(Uri.https('services.isrostats.in','api/launches'));
    var jsonData=jsonDecode(response.body);

    for(var eachsatellite in jsonData){
      final mysat= thesat(  
        name: eachsatellite['Name'], 
        launchdate: eachsatellite['LaunchDate'], 
        launchtype: eachsatellite['LaunchType'], 
        payload: eachsatellite['Payload'], 
        moreInfo: eachsatellite['Link'], 
        missionstatus: eachsatellite['MissionStatus']
        );
        allsats.add(mysat);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: FutureBuilder(
      future: getsatinfo(),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.done){
            return ListView.builder(
              itemCount: allsats.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: GestureDetector(
                    onTap: () async {
                         Uri _url = Uri.parse(allsats[index].moreInfo);
                          if (await launchUrl(_url)) {
                               await launchUrl(_url);
                         } else {
                           throw 'Could not launch $_url';
                               }
                            }, 
                    child: Card(
                      margin: EdgeInsets.all(5),
                          color: Color.fromARGB(61, 112, 47, 123),
                          shadowColor: const Color.fromARGB(156, 189, 189, 189),
                          elevation: 5,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Image.asset('images/satellite.png',height: 50,),
                              Column(
                                children: [
                                      SizedBox(
                                        width: 240,
                                        child: Center(
                                          child: Text(
                                          allsats[index].name,
                                          maxLines: 1,
                                          overflow: TextOverflow.fade,
                                          softWrap: false,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white
                                              ),
                                            ),
                                        ),
                                      ),

                                  Text('Launch date: '+allsats[index].launchdate,style: TextStyle(color: Colors.white),overflow: TextOverflow.fade),
                                  Text('Launch type '+allsats[index].launchtype,style: TextStyle(color: Colors.white),overflow: TextOverflow.fade),
                                  SizedBox(width:240, child: Center(child: Text('Payload: '+allsats[index].payload,maxLines: 1,softWrap: false,style: TextStyle(color: Colors.white),overflow: TextOverflow.fade))),
                                  Text('Result: '+allsats[index].missionstatus,style: TextStyle(color: Colors.white),overflow: TextOverflow.fade),
                                    ],
                                  ),  
                                ],
                          ),
                        ),
                  ) 
                );
              },
            );
        }
        else {
          return Scaffold(
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/bg.jpg'),
                fit: BoxFit.cover
                ),                
              ),
              child: LinearProgressIndicator(),
            ),
          );
        }
      },
    )
        ),
    );
     
  }
}

final class thesat{
  final String name;
  final String launchdate;
  final String launchtype;
  final String payload;
  final String moreInfo;
  final String missionstatus;

  thesat({
    required this.name,
    required this.launchdate,
    required this.launchtype,
    required this.payload, 
    required this.moreInfo,
    required this.missionstatus
    });

}