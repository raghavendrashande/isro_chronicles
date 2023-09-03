import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:isro_chronicle/pages/loginorregisterpage.dart';
import 'package:isro_chronicle/pages/home_page.dart';

class authpage extends StatelessWidget {
  const authpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return const Homepage();
          }
          else {
            return loginorregister();
          }
        },
      )
    );
  }
}