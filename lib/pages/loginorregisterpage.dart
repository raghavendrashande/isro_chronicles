import 'package:flutter/material.dart';
import 'package:isro_chronicle/pages/signuppage.dart';
import 'package:isro_chronicle/pages/signinpage.dart';

class loginorregister extends StatefulWidget {
  const loginorregister({super.key});

  @override
  State<loginorregister> createState() => _loginorregisterState();
}

class _loginorregisterState extends State<loginorregister> {
  bool showloginpage = true;
  void togglepages(){
    setState(() {
      showloginpage=!showloginpage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showloginpage) {
      return Loginpage(
        ontap: togglepages,
      );
  }
    else {
      return registerpage(
        ontap: togglepages,
      );
    }
  }
}