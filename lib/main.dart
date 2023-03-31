import 'package:flutter/material.dart';
import 'package:gsochome/screens/Home_screen.dart';
import 'package:gsochome/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gsochome/screens/parent_register.dart';
import 'package:gsochome/screens/welcome_screen.dart';
import 'firebase_options.dart';
import 'package:gsochome/db/shared.dart';
import 'package:gsochome/utils/constants.dart';

//void main() => runApp(MyApp());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await MySharedPreference.init();
  runApp(const MyApp());
}

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saheli',
      color: Color(0xFF205E61),
      home: FutureBuilder(
        future: MySharedPreference.getUserType(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
  
          if (snapshot.data == "") {
            return LoginScreen();
          }
          if (snapshot.data == "child") {
            return WelcomeScreen();
          }
          if (snapshot.data == "parent") {
            return RegisterParentScreen();
          }

          return progressIndicator(context);
        },
      ),
      //home: LoginScreen(),
    );
  }
}*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Saheli',
      color: Color(0xFF205E61),
      home: LoginScreen(),
    );
  }
}
