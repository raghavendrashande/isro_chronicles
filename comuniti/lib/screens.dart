import 'package:flutter/material.dart';

class volsc extends StatefulWidget {
  const volsc({super.key});

  @override
  State<volsc> createState() => _volscState();
}

class _volscState extends State<volsc> {
  
  @override
  Widget build(BuildContext context) {
    return
       Container(
        height: 1000,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:AssetImage('images/mainpage.png'),
            fit: BoxFit.fitHeight, 
          )
        ),
        child: Center(
          child:Text('voluntsc')
        ),
      
    );
  }
}
class needsc extends StatefulWidget {
  const needsc({super.key});

  @override
  State<needsc> createState() => _needscState();
}

class _needscState extends State<needsc> {
  
  @override
  Widget build(BuildContext context) {
    return 
       Container(
        height: 1000,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:AssetImage('images/mainpage.png'),
            fit: BoxFit.fitHeight, 
          )
        ),
        child: Center(
          child:Text('needsc')
        ),
      
    );
  }
}