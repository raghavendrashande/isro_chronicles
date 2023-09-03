import 'package:comuniti/screens.dart';
import 'package:flutter/material.dart';
import 'package:comuniti/voluntpg.dart';

class Toggle extends StatefulWidget {
  const Toggle({super.key});

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool toggleval=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Need help?',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(width: 20),
              Transform.scale(
                scale: 2.0,
             child: Switch(value: toggleval, onChanged: (value){
            setState(() {
              toggleval= value;
            });
          },
          activeColor: Color.fromARGB(255, 247, 201, 108),
          inactiveThumbColor: Color.fromARGB(255, 157, 218, 237),
          ),),
          SizedBox(width: 20),
          Text('Help others',
          style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),) 
            ],
          ),
         toggleval?needsc():volpg()
        ],
      ),
      
    );
  }
}