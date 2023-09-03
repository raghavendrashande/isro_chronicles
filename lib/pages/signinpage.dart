import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Loginpage extends StatefulWidget {
 const Loginpage({super.key,required this.ontap});
  final Function()? ontap;

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final emailcontroller=TextEditingController();
  final passwordcontroller=TextEditingController();

  void signuserin() async {
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
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);
      // WRONG EMAIL
      if (e.code == 'user-not-found') {
        // show error to user
        showerrorMessage(e.code);
      }

      // WRONG PASSWORD
      else if (e.code == 'wrong-password') {
        // show error to user
        showerrorMessage(e.code);
      }
    }
  }

  // wrong email message popup
  void showerrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              message,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 15),
              Text('Hello again!',
              style: GoogleFonts.bebasNeue(
                color: Colors.grey[350],
                fontSize: 52,
              )),
              Text('Welcome back. You\'ve been missed!',
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
      
      
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){}, child: Text('Forgot Password?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 34, 146, 245),
                      ),
                    ),
                  ),
                  SizedBox(width: 25)
                ],
              ),
              SizedBox(height: 10),
      
              //sign in button
              GestureDetector(
                onTap: signuserin,
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
                        child: Text('Sign-in',
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
                onTap: (){},
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
                  Text('Not a member? ',
                  style: TextStyle(
                    color: Colors.grey[350],
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),),
                  GestureDetector(
                    onTap: widget.ontap,
                    child: Text('Register now! ',
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
    );
  }
}