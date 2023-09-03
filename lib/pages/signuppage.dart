import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class registerpage extends StatefulWidget {
  registerpage({super.key,required this.ontap});
  final Function()? ontap;

  @override
  State<registerpage> createState() => _registerpageState();
}

class _registerpageState extends State<registerpage> {
  final emailcontroller=TextEditingController();
  final passwordcontroller=TextEditingController();
  final confirmpasswordcontroller=TextEditingController();

  void signuserup() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in
    try {
      if(passwordcontroller.text==confirmpasswordcontroller.text){
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
        );
      }
      else {
        showerrorMessage('passwords don\'t match');
      }
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);
      // WRONG EMAIL
      showerrorMessage(e.code);
    }
  }

  // show error message popup
  void showerrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.purpleAccent[100],
          title: const Center(
            child: Text(
              'Incorrect Email',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 43, 42, 42),
      body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  Text('Hello enthusiast!',
                  style: GoogleFonts.bebasNeue(
                    color: Colors.grey[350],
                    fontSize: 52,
                  )),
                  Text('We\'re happy to have you here!',
                  style: TextStyle(
                    color: Color.fromARGB(255, 225, 223, 223),
                    fontSize: 20
                  ),),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(197, 49, 48, 48),
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(12)
                      ),
                    
                      //email text field
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          controller: emailcontroller,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Color.fromARGB(250, 217, 215, 215))
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(197, 49, 48, 48),
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(12)
                      ),
                    
                      //password field
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          controller: passwordcontroller,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Color.fromARGB(250, 217, 215, 215))
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(197, 49, 48, 48),
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(12)
                      ),
                    
                      //confirm password field
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          controller: confirmpasswordcontroller,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Confirm password',
                            hintStyle: TextStyle(color: Color.fromARGB(250, 217, 215, 215))
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                    
                  //sign in button
                  GestureDetector(
                    onTap: signuserup,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:25,),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent[100],
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18),
                          child: Center(
                            child: Text('Sign-up',
                            style: TextStyle(
                              color: Colors.grey[850],
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Text('Or continue with',style: TextStyle(
                          color: Colors.grey[350],
                          fontSize: 15
                        ),),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap:(){},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 110),
                      child: Container(
                        child: Image.asset('images/glogo.png',),
                      )
                    ),
                  ),
                   SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account? ',
                      style: TextStyle(
                        color: Colors.grey[350],
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),),
                      GestureDetector(
                        onTap: widget.ontap,
                        child: Text('Sign in ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 34, 146, 245),
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      
    );
  }
}