import 'package:final_space_app/chatgpt.dart';
import 'package:final_space_app/onboardingpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Theme= ThemeData(
  
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor:const Color.fromARGB(255, 113, 39, 7),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme..colorScheme.copyWith(secondary: Colors.blueGrey),
      home:const onsc(),
    );
  }
}
