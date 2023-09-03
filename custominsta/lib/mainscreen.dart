import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient( 
            colors: [
            Color.fromARGB(255, 152, 1, 246),
            Color.fromARGB(255, 255, 1, 1)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Text('Myapp',
              style: TextStyle(
                fontFamily: 'Pacifico-Regular',
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),
              ),
              
              Image.asset('instlogo.png.png',
              width: 100,),
            ],

          ),)
            
      
    );
  }
}