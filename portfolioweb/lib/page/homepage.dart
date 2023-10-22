import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double font1 = _width>600?65:30;
    double font2 = _width>600?30:18;
    double font3 = _width>600?18:14;
    double cwidth = _width>600?200:125;
    double cheight = _width>600?300:175;

    return Scaffold(
      appBar: AppBar(
          iconTheme:const IconThemeData(color: Colors.white, weight: 2),
          backgroundColor: const Color.fromARGB(255, 24, 24, 24),
          centerTitle: true,
          title:Wrap(
                children:[
                  TextButton(
                      onPressed: (){},
                      child: Text('Home',
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontSize: font2, 
                                  fontWeight: FontWeight.bold),
                                  ),
                                ),
                  TextButton(
                    onPressed: (){}, 
                    child: Text('Projects',
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontSize: font2, 
                                  fontWeight: FontWeight.bold),
                                  ),
                                ),
                  TextButton(
                    onPressed: (){}, 
                    child: Text('Certificates',
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontSize: font2, 
                                  fontWeight: FontWeight.bold),
                                  ),
                                ),
                  TextButton(
                    onPressed: (){}, 
                    child: Text('Achievements',
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontSize: font2, 
                                  fontWeight: FontWeight.bold),
                                  ),
                                ),
          ],
        ), 
      ),
      drawer: Drawer(
        backgroundColor:const Color.fromARGB(255, 24, 24, 24),
        child: ListView(
          padding: EdgeInsets.zero,
        children:[
          UserAccountsDrawerHeader(
            accountName: const Text('Raghavendra Hande', style: TextStyle(fontWeight: FontWeight.bold),),
            accountEmail: const Text('raghavendrahande@gmail.com'),
              currentAccountPicture:Container(
                decoration: BoxDecoration(
                  boxShadow: const[
                    BoxShadow(
                      blurRadius: 25,
                      color: Colors.blue
                    )
                  ],
                  borderRadius: BorderRadius.circular(30)
                ),
                child: CircleAvatar(
                  child:ClipOval(child:Image.asset('assets/mypic.png')),
                ),
              ),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 24, 24, 24),
            ),
          ),
          ListTile(
            leading: Image.asset('assets/socialmediaicons/email.png'),
            title: const Text('Email',style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Image.asset('assets/socialmediaicons/github.png'),
            title: const Text('Github',style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Image.asset('assets/socialmediaicons/instagram.png'),
            title: const Text('Instagram',style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Image.asset('assets/socialmediaicons/linkedin.png'),
            title: const Text('Linkedin',style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 25),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Container(
                      width: cwidth,
                      height: cheight,
                      decoration:const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('assets/dash.png',)
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue,
                            offset: Offset.zero,
                            blurRadius: 20
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          const SizedBox(height: 35),
                          Text('My personal portfolio', style: GoogleFonts.bebasNeue(fontSize: font1,fontWeight: FontWeight.bold),),   
                          GradientText('Flutter developer', 
                          style: GoogleFonts.sacramento(fontSize: font1),
                          colors: const [
                          Color.fromARGB(255, 79, 162, 244),
                          Color.fromARGB(255, 15, 83, 152),
                            ],
                          ),
                          Text('Passionate Flutter developer with a keen eye for design and a knack for delivering high-quality, user-friendly mobile applications.\n Adept at utilizing the latest Flutter features and best practices to create engaging and performant mobile experiences.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            fontSize: font3,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}