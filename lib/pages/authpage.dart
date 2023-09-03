import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:isro_chronicle/pages/loginorregisterpage.dart';
import 'package:isro_chronicle/pages/splashscreen.dart';

class authpage extends StatelessWidget {
  const authpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return SplashScreen();
          }
          else {
            return loginorregister();
          }
        },
      )
    );
  }
}