import 'package:flutter/material.dart';
import 'package:isro_chronicle/data.dart/lvdata.dart';
import 'package:isro_chronicle/data.dart/satellitesapicall.dart';

class satstab extends StatefulWidget {
  const satstab({super.key});

  @override
  State<satstab> createState() => _satstabState();
}

class _satstabState extends State<satstab> {
  

  @override
  Widget build(BuildContext context) {
    return satsdata();
  }
}

class launchtab extends StatelessWidget {
  const launchtab({super.key});

  @override
  Widget build(BuildContext context) {
    return lvdata();
  }
}

class uptab extends StatelessWidget {
  const uptab({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('data');
  }
}

class eventtab extends StatelessWidget {
  const eventtab({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('data');
  }
}

