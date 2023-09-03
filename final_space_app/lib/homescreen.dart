import 'dart:convert';
import 'package:final_space_app/loadingpage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:final_space_app/apod.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  List <astropicofday> data =[]; 

  Future getapod() async{
    var response = await http.get(Uri.https('api.nasa.gov','planetary/apod',{'api_key':'qaID1dLXIGHJnYj8wOpcFbDjxNS9B0vD4kCHBMFT'}));
    var jsdat=jsonDecode(response.body);
    final Picture= astropicofday(imglink: jsdat['url'], title: jsdat['title'],);
    data.add(Picture);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:FutureBuilder(
        future: getapod(),
        builder: (context, snapshot) {
          if(snapshot.connectionState==ConnectionState.done){
            return ListTile(
              title: SafeArea(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.network(data[0].imglink),
                      ),
                    const Text('NASA astronomy picture of the day',  style:const TextStyle(color:  Colors.white)),
                    TextButton(
                      onPressed: () {},
                      child: Text(data[0].title, style:const TextStyle(color:  Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
                  ],
                ),
              ),
           );
          }
          else {
            return const loadingpage();
          }
        }
      )
    );

  }
}