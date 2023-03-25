import 'package:flutter/material.dart';
import 'package:gsochome/screens/login_screen.dart';
import 'package:gsochome/screens/welcome_screen.dart';
import 'package:gsochome/widgets/customcontainer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saheli',
      color: Color(0xFF205E61),

      home: LoginScreen(),
    );
  }
}

