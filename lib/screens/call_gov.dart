import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:gsochome/screens/Home_screen.dart';
import 'package:gsochome/widgets/custom_button.dart';


class Calls_Gov extends StatelessWidget {
  const Calls_Gov({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {


    const Ambulance = '+917678471051';
    const Police = '+917678471051';
    const Pregnancy_Medic = '+917678471051';
    const National_help = '+917678471051';
    const Fire_service = '+917678471051';
    const Women_helpline = '+917678471051';
    const Child_helpline = '+917678471051';


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              height: 250.0,
              decoration: BoxDecoration(
                  color: Color(0xFF3F979B),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyHomePage(),
                                    ));;
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new_sharp,
                                color: Color.fromARGB(255, 35, 34, 34),
                                size: 25,
                              ),
                            )),
                      ),
                    ],
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Text('Saheli',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))),
                  SizedBox(height: 20),
                  Positioned(
                      left: 140,
                      top: 150.0,
                      bottom: 20.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset('assets/saheli2.jpg',
                            height: 90.0,
                            width: 90,
                            scale: 3.8,
                            fit: BoxFit.cover),
                      )),
                ],
              )),
          // Positioned(
          //     left: 140,
          //     top: 150.0,
          //     bottom: 20.0,
          //     child: ClipRRect(
          //       borderRadius: BorderRadius.circular(16.0),
          //       child: Image.asset('assets/app logo.jpg',
          //           height: 90.0, width: 90, scale: 3.8, fit: BoxFit.cover),
          //     )),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
  onPressed: () async{
                      await FlutterPhoneDirectCaller.callNumber(Women_helpline);
                    },
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text('Women Helpline',
      style: TextStyle(fontSize: 25),), // <-- Text
      SizedBox(
        width: 10,
        height: 50,
      ),
      Icon( // <-- Icon
        Icons.call,
        size: 20.0,
      ),
    ],
  ),
),
          ),


Padding(
  padding: const EdgeInsets.all(8.0),
  child:   ElevatedButton(
 
    onPressed: () async{
                      await FlutterPhoneDirectCaller.callNumber(Police);
                    },
 
    child: Row(
 
      mainAxisSize: MainAxisSize.min,
 
      children: [
 
        Text('Police',
        style: TextStyle(fontSize: 25),
        ), // <-- Text
 
        SizedBox(
 
          width: 10,
        height: 50,
 
        ),
 
        Icon( // <-- Icon
 
          Icons.call,
 
          size: 25.0,
 
        ),
 
      ],
 
    ),
 
  ),
),


Padding(
  padding: const EdgeInsets.all(8.0),
  child:   ElevatedButton(
 
    onPressed: () async{
                      await FlutterPhoneDirectCaller.callNumber(Ambulance);
                    },
 
    child: Row(
 
      mainAxisSize: MainAxisSize.min,
 
      children: [
 
        Text('Ambulance',
        style: TextStyle(fontSize: 25),
        ), // <-- Text
 
        SizedBox(
 
          width: 10,
        height: 50,
 
        ),
 
        Icon( // <-- Icon
 
          Icons.call,
 
          size: 25.0,
 
        ),
 
      ],
 
    ),
 
  ),
),


Padding(
  padding: const EdgeInsets.all(8.0),
  child:   ElevatedButton(
 
    onPressed: () async{
                      await FlutterPhoneDirectCaller.callNumber(Child_helpline);
                    },
 
    child: Row(
 
      mainAxisSize: MainAxisSize.min,
 
      children: [
 
        Text('Child Helpline',
        style: TextStyle(fontSize: 25),), // <-- Text
 
        SizedBox(
 
          width: 10,
        height: 50,
 
        ),
 
        Icon( // <-- Icon
 
          Icons.call,
 
          size: 25.0,
 
        ),
 
      ],
 
    ),
 
  ),
),


Padding(
  padding: const EdgeInsets.all(8.0),
  child:   ElevatedButton(
 
    onPressed: () async{
                      await FlutterPhoneDirectCaller.callNumber(Pregnancy_Medic);
                    },
 
    child: Row(
 
      mainAxisSize: MainAxisSize.min,
 
      children: [
 
        Text('Pregnancy Medic',
        style: TextStyle(fontSize: 25),), // <-- Text
 
        SizedBox(
 
          width: 10,
        height: 50,
 
        ),
 
        Icon( // <-- Icon
 
          Icons.call,
 
          size: 25.0,
 
        ),
 
      ],
 
    ),
 
  ),
),


Padding(
  padding: const EdgeInsets.all(8.0),
  child:   ElevatedButton(
 
    onPressed: () async{
                      await FlutterPhoneDirectCaller.callNumber(Fire_service);
                    },
 
    child: Row(
 
      mainAxisSize: MainAxisSize.min,
 
      children: [
 
        Text('Fire service',
        style: TextStyle(fontSize: 25),), // <-- Text
 
        SizedBox(
 
          width: 10,
        height: 50,
 
        ),
 
        Icon( // <-- Icon
 
          Icons.call,
 
          size: 25.0,
 
        ),
 
      ],
 
    ),
 
  ),
),


        ]),
      ),
    );
  }
}
