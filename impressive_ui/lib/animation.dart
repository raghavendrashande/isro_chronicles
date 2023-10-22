import 'package:flutter/material.dart';

class minianimation extends StatefulWidget {
  const minianimation({super.key});
  @override
  State<minianimation> createState() => _minianimationState();
}

class _minianimationState extends State<minianimation> with TickerProviderStateMixin{

late AnimationController control;
late Animation<double> rotationanimation;
late Animation<double> radiusanimation;

  @override
  void initState(){
    super.initState();

    //animation controller
    control=AnimationController(
      vsync: this,
      duration:const Duration(seconds: 2),
    )..forward();
    
    //rotation animation
    rotationanimation=Tween(begin: 0.0, end: 1.0)
    .animate(CurvedAnimation(parent: control, curve: Curves.easeInOut));

    //radius animation
    radiusanimation=Tween(begin: 450.0, end: 10.0)
    .animate(CurvedAnimation(parent: control, curve: Curves.easeInOut));

    control.addListener(() {
      setState(() {});
    });

    control.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        control.reverse();
      }
      else if(status == AnimationStatus.dismissed) {
        control.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Transform.rotate(
              angle: rotationanimation.value,
              child: Container(
                width: 225,
                height: 225,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[400],
                  borderRadius: BorderRadius.circular(radiusanimation.value)
                ),
              ),
            ),
             Transform.rotate(
               angle: rotationanimation.value+0.2,
               child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[500],
                  borderRadius: BorderRadius.circular(radiusanimation.value)
                ),
                         ),
             ),
             Transform.rotate(
               angle: rotationanimation.value+0.4,
               child: Container(
                width: 175,
                height: 175,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[700],
                  borderRadius: BorderRadius.circular(radiusanimation.value)
                ),
                         ),
             ),
             Transform.rotate(
               angle: rotationanimation.value+0.6,
               child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[800],
                  borderRadius: BorderRadius.circular(radiusanimation.value)
                ),
                         ),
             ),
             Transform.rotate(
               angle: rotationanimation.value+0.8,
               child: Container(
                width: 125,
                height: 125,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 150, 104, 230),
                  borderRadius: BorderRadius.circular(radiusanimation.value)
                ),
                         ),
             ),
             Transform.rotate(
               angle: rotationanimation.value+1.0,
               child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 192, 168, 237),
                  borderRadius: BorderRadius.circular(radiusanimation.value)
                ),
                         ),
             ),
             Transform.rotate(
               angle: rotationanimation.value+1.2,
               child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(radiusanimation.value)
                ),
                         ),
             ),
          ],
        ),
      ),
    );
  }
}