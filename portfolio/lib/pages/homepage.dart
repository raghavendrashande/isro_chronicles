import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> with SingleTickerProviderStateMixin {

  late AnimationController animcont;


  @override
  void initState(){
    super.initState();
    animcont= AnimationController(vsync: this,duration: Duration(seconds: 1));
  }

  void iconcontrol(){
    if(animcont.isCompleted){
      animcont.reverse();
    }
    else {
      animcont.forward();
    }
  }
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(  
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  clipBehavior: Clip.hardEdge,
                  spacing: 10,
                  runSpacing: 5,
                  children: [
                    IconButton(
                      onPressed: iconcontrol,
                      icon: AnimatedIcon(
                        color: Color.fromARGB(255, 234, 232, 232),
                        icon: AnimatedIcons.menu_close, 
                        progress:animcont
                        ),
                      ),
                    TextButton(onPressed: (){}, child: Text('Home',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14, fontWeight: FontWeight.bold),)),
                    TextButton(onPressed: (){}, child: Text('Projects',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14, fontWeight: FontWeight.bold),)),
                    TextButton(onPressed: (){}, child: Text('Certificates',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14, fontWeight: FontWeight.bold),)),
                    TextButton(onPressed: (){}, child: Text('Achievements',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14, fontWeight: FontWeight.bold),)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset('assets/follow.gif',width:300,height: 300,),
                        GestureDetector(
                          child: Image.asset('assets/email.png'),
                        ),
                        const SizedBox(height: 15),
                        GestureDetector(
                          child: Image.asset('assets/github.png'),
                        ),
                        const SizedBox(height: 15),
                        GestureDetector(
                          child: Image.asset('assets/instagram.png'),
                        ),
                        const SizedBox(height: 15),
                        GestureDetector(
                          child: Image.asset('assets/linkedin.png'),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Center(
                      widthFactor: 200,
                      child: Column(
                      children: [
                        Text('My personal portfolio', style: GoogleFonts.bebasNeue(fontSize: 75,fontWeight: FontWeight.bold),),
                        GradientText('Flutter developer', 
                      style: TextStyle(fontSize: 50),
                      colors: [
                      Color.fromARGB(255, 79, 162, 244),
                      Color.fromARGB(255, 15, 83, 152),
                      ]),
                      Text('$_width',style: TextStyle(color: Colors.white),)
                      ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}