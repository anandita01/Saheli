import 'package:flutter/material.dart';
import 'package:gsochome/main.dart';
import 'package:lottie/lottie.dart';
import 'Home_screen.dart';

import '../widgets/custom_button.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/saheli2.jpg'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Let's get started",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lets make you stronger and fearless",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //custom button
                  SizedBox(
                    width: double.infinity, //unlimited space is available
                    height: 50,
                    child: CustomButton(
                      text: 'Get Started',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
