import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gsochome/components/custom_textfield.dart';
import 'package:gsochome/components/ontapbutton.dart';
import 'package:gsochome/screens/register_child.dart';
import 'package:gsochome/screens/welcome_screen.dart';
import 'package:gsochome/widgets/custom_button.dart';
import 'package:gsochome/db/shared.dart';
import 'package:lottie/lottie.dart';
import 'package:gsochome/utils/constants.dart';
import 'package:gsochome/screens/Home_screen.dart';
import 'package:gsochome/screens/parent_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordShown = true;
  final _formKey = GlobalKey<FormState>();
  final _formData = Map<String, Object>();
  bool isLoading = false;

  _onSubmit() async {
    _formKey.currentState!.save();
    try {
      setState(() {
        isLoading = true;
      });
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: _formData['email'].toString(),
              password: _formData['password'].toString());
      if (userCredential.user != null) {
        setState(() {
          isLoading = false;
        });
        FirebaseFirestore.instance
            .collection('users')
            .doc(userCredential.user!.uid)
            .get()
            .then((value) {
          if (value['type'] == 'parent') {
            print(value['type']);
            MySharedPreference.saveUserType('parent');
            goTo(context, RegisterParentScreen());
          } else {
            MySharedPreference.saveUserType('child');

            goTo(context, MyHomePage());
          }
        });
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        isLoading = false;
      });
      if (e.code == 'user-not-found') {
        dialogueBox(context, 'No user found for that email.');
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        dialogueBox(context, 'Wrong password provided for that user.');
        print('Wrong password provided for that user.');
      }
    }
    print(_formData['email']);
    print(_formData['password']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          isLoading
              ? progressIndicator(context)
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      //logo
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Lottie.asset('assets/login.json', height: 250),
                      ),

                      //const SizedBox(height: 10),

                      //welcome back
                      const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          'Welcome back to saheli you\'ve been missed !!',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 15),

                      CustomTextfield(
                        hintText: "Enter email",
                        textInputAction: TextInputAction.next,
                        keyboardtype: TextInputType.emailAddress,
                        prefix: Icon(Icons.person),
                        onsave: (email) {
                          _formData['email'] = email ?? "";
                        },
                        validate: (email) {
                          if (email!.isEmpty ||
                              email.length < 3 ||
                              !email.contains("@")) {
                            return 'enter correct email';
                          }
                        },
                      ),

                      CustomTextfield(
                        hintText: "Enter password",
                        isPassword: isPasswordShown,
                        prefix: Icon(Icons.vpn_key_rounded),
                        validate: (password) {
                          if (password!.isEmpty || password.length < 7) {
                            return 'enter correct password';
                          }
                          return null;
                        },
                        onsave: (password) {
                          _formData['password'] = password ?? "";
                        },
                        suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                isPasswordShown = !isPasswordShown;
                              });
                            },
                            icon: isPasswordShown
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility)),
                      ),
                      CustomButton(
                        onPressed: () {
                          /* if (_formKey.currentState!.validate()) {
                            _onSubmit();
                          }*/
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WelcomeScreen(),
                              ));
                        },
                        text: 'LOGIN',
                      ),
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
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Not a member?",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )),
                          OnTapbutton(
                              title: "Register here",
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          RegisterChildScreen(),
                                    ));
                              })
                        ],
                      ),

                      //forgot password
                    ],
                  ),
                ),
        ],
      ),
    )));
  }
}
