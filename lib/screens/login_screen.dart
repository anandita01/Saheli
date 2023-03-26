import 'package:flutter/material.dart';
import 'package:gsochome/components/custom_textfield.dart';
import 'package:gsochome/components/ontapbutton.dart';
import 'package:gsochome/screens/register_child.dart';
import 'package:gsochome/screens/welcome_screen.dart';
import 'package:gsochome/widgets/custom_button.dart';
import 'package:lottie/lottie.dart';

import '../utils/constants.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
        children: [

              const SizedBox(height: 10),
              //logo
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Lottie.asset(
                    'assets/login.json',
                    height: 250),
              ),

              //const SizedBox(height: 10),

              //welcome back
              const Padding(
                padding: EdgeInsets.all(2.0),
                child:  Text(
                  'Welcome back to saheli you\'ve been missed !!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(height: 15),
              
              CustomTextfield(
                  hintText: "Enter name",
                  prefix: Icon(Icons.person)),

              CustomTextfield(
                  hintText: "Enter password",
                  prefix: Icon(Icons.lock)),
              CustomButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen();
                    },
                  ), // MaterialPageRoute
                );
              }, text: 'LOGIN',),
              //OnTapbutton(title: "Forgot password", onPressed: onPressed(){})
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return WelcomeScreen();
                            },
                          ), // MaterialPageRoute
                        );
                      },
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,
                          fontSize: 15,),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a member?",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                        fontSize: 15,)
                  ),
                  OnTapbutton(title: "Register here", onPressed: (){

                      goTo(context, RegisterChildScreen());

                  })
                ],
              ),


              //forgot password


              

        ],
      ),
            ),
          ))

    );
  }
}
