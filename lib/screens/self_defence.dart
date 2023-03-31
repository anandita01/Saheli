import 'package:flutter/material.dart';
import 'package:gsochome/widgets/imagegrid.dart';

class SelfDefence extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF3F979B),
          title: Text('Self Defence '),
        ),
        body: ImageGrid());
  }
}
/*import 'package:gsochome/components/custom_textfield.dart';
import 'package:gsochome/components/ontapbutton.dart';
import 'package:gsochome/screens/register_child.dart';
import 'package:gsochome/screens/welcome_screen.dart';
import 'package:gsochome/widgets/custom_button.dart';
import 'package:lottie/lottie.dart';
class self_defence extends StatelessWidget {
  const self_defence ({Key? key}) : super(key: key);


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
        ]
      ),
            ),
          ))


    );
  }
}*/

