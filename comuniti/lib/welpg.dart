import 'package:flutter/material.dart';
import 'dart:async';
import 'package:comuniti/homescreen.dart';
import 'package:google_fonts/google_fonts.dart';

class timersc extends StatefulWidget {
  const timersc({super.key});

  @override
  State<timersc> createState() => _timerscState();
}

class _timerscState extends State<timersc> {
  int _counter=3;
  // ignore: unused_field
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
     _timer = Timer(const Duration(seconds: 1), () {
      _counter--;
      if (_counter == 0) {
        _navigateToNextScreen();
      } else {
        _startTimer();
      }
    });
  }

  void _navigateToNextScreen() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Toggle()));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: intro()
    );
  }
}

class intro extends StatelessWidget {
  const intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
       image: DecorationImage(
        image: AssetImage('images/frntpg.png'),
        fit: BoxFit.cover
       )
      ),
      
    );
  }
}