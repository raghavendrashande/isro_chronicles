import 'package:final_space_app/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class onsc extends StatefulWidget {
  const onsc({super.key});

  @override
  State<onsc> createState() => _onscState();
}

class _onscState extends State<onsc> {

  void navigatetoloading(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>home()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children:[
         Container(
          height: double.infinity,
          width: double.infinity,
          decoration:const BoxDecoration(
            image: DecorationImage(image: AssetImage('imageassets/onbdimg.jpeg'), fit: BoxFit.cover),
          ), 
        ),
           Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Welcome!',style: TextStyle(
            fontSize: 60,
            color: Colors.white,
            fontWeight: FontWeight.bold)),
            const SizedBox(height: 20,),
            SliderButton(action: (){
              navigatetoloading(context);
            },
            label: Text(
              "Let\'s  go",
              style: TextStyle(
              color: Colors.purple[400], fontWeight: FontWeight.w500, fontSize: 35),
           ),
           icon: Icon(Icons.rocket_launch, color: Colors.purple[200],size: 40,),
            )
             
              ],
            ),
          ),
        ]
      ),
    );
  }
}