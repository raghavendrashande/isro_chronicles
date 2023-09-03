import 'package:flutter/material.dart';

class volpg extends StatefulWidget {
  const volpg({super.key});

  @override
  State<volpg> createState() => _volpgState();
}

class _volpgState extends State<volpg> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            const Text('Hello, \nHow is your day?',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            ),
            Row(
              children: [
                Expanded(
            child: OutlinedButton(onPressed: () {},
                style: OutlinedButton.styleFrom(
                  fixedSize: Size.fromHeight(150.0),
                  maximumSize: Size.fromWidth(100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  elevation: 5,
                  shadowColor: Color.fromARGB(255, 248, 167, 100)
                ), child: 
               const Text('Talk to a person who needs help', style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
                ),              
            ))])
          ]),
    );
  }
}