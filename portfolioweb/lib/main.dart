import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/page/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        scaffoldBackgroundColor: const Color.fromARGB(255, 24, 24, 24),
        useMaterial3: true,
        textTheme: GoogleFonts.bebasNeueTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white,)
      ),
      home:const homepage(),
    );
  }
}
