import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:gsochome/screens/aboutus.dart';
import 'package:gsochome/screens/add_contacts.dart';
import 'package:gsochome/widgets/live_safe.dart';
import '../widgets/customcontainer.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    const number = '+917678471051';
    const Ambulance = '+917678471051';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3F979B),
        title: Text('SAHELI'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
               
               margin: const EdgeInsets.fromLTRB(50, 50, 50, 20),
             
              child: Ink(
                    decoration: const ShapeDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    shape: CircleBorder(),
                  ),
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                          'assets/profile_2.PNG',
                          width: 150,
                          height: 89,
                    ),
                 
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "XYZ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
                 
                ),


            ),
            ListTile(
              title: Text('Trusted Contacts'),
              onTap: () {
                // Do something
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddContactsPage(),
                    ));
              },
            ),
           
            Card(
              margin: const EdgeInsets.fromLTRB(50, 5, 50, 10),
          color: Color(0xFF3F979B),
          child: SizedBox(
          width: 50,
          height: 60,
          child: ListTile(
            title: Text('Ambulance',
    //textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 20,
    color: Color.fromARGB(255, 254, 255, 255),
  ),
      ),
            trailing:IconButton(
                    iconSize: 25,
                    icon: const Icon(Icons.phone),
                    color: Colors.white,
                    onPressed:()  async {
                      await FlutterPhoneDirectCaller.callNumber(Ambulance);
                    },
                  ),
          ),
        ),
            ),


            Card(
              margin: const EdgeInsets.fromLTRB(50, 10, 50, 10),
          color: Color(0xFF3F979B),
          child: SizedBox(
          width: 50,
          height: 60,
          child: ListTile(
            title: Text('   Police',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 20,
    color: Color.fromARGB(255, 254, 255, 255),
  ),
      ),
            trailing: IconButton(
                    iconSize: 25,
                    icon: const Icon(Icons.phone),
                    color: Colors.white,
                    onPressed:()  async {
                      await FlutterPhoneDirectCaller.callNumber(Ambulance);
                    },
                  ),
          ),
        ),
            ),


            Card(
              margin: const EdgeInsets.fromLTRB(50, 240, 50, 10),
          color: Color(293462),
          child: SizedBox(
          width: 50,
          height: 60,
          child: ListTile(
            title: Text('About this app',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 17,
    color: Color.fromARGB(255, 254, 255, 255),
  ),
      ),
           
          ),
        ),
            ),


       
        ],
        ),
       
      ),


      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Ink(
                  decoration: const ShapeDecoration(
                    color: Color(0xFF3F979B),
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    iconSize: 40,
                    icon: const Icon(Icons.phone),
                    color: Colors.white,
                    onPressed:()  async {
                      await FlutterPhoneDirectCaller.callNumber(number);
                    },
                  ),
                ),
                Ink(
                  decoration: const ShapeDecoration(
                    color: Color(0xFF3F979B),
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    iconSize: 40,
                    icon: const Icon(Icons.location_on_outlined),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
                Ink(
                  decoration: const ShapeDecoration(
                    color: Color(0xFF3F979B),
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    iconSize: 40,
                    icon: const Icon(Icons.emergency),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
                Ink(
                  decoration: const ShapeDecoration(
                    color: Color(0xFF3F979B),
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    iconSize: 40,
                    icon: const Icon(Icons.sos_rounded),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Text(
            'GOVERNMENT SCHEMES',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 20.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                /*Expanded(child: Text(
                    'Launched on 22nd January 2015 by the Prime Minister of India in Haryana, the Beti Bachao Beti Padhao Scheme ensures survival, protection and education of girl children. The scheme aims to address issues of the declining sex ratio over the past few years, create social awareness and enhance the efficiency of welfare services developed for girls.',
                  maxLines:3,
                  overflow: TextOverflow.ellipsis,

                )),*/
                CustomContainer(
                  color: Color(0xFF8BF5FA),
                  /*decoration: BoxDecoration(
                    color: Color(0xFF8BF5FA),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/BetiPadhao.jpg'),
                      fit: BoxFit.fill,
                    ),*/
                  schemename: 'Beti Bachao Beti Padhao Scheme',
                  info: 'Launched on 22nd January 2015 by the Prime Minister of India in Haryana, the Beti Bachao Beti Padhao Scheme ensures survival, protection and education of girl children. The scheme aims to address issues of the declining sex ratio over the past few years, create social awareness and enhance the efficiency of welfare services developed for girls.',



                ),

                CustomContainer(
                  color: Color(0xFF3F979B),
                  /*image: new DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                    image: new NetworkImage(
                      'assets/BetiPadhao.jpg',
                    )*/
                  schemename: '2018 scheme',
                  info: '',
                ),
                CustomContainer(
                  color: Color(0xFF8BF5FA),
                  schemename: '',
                  info: '',
                ),
                CustomContainer(
                  color: Color(0xFF3F979B),
                  schemename: '',
                  info: '',
                ),
                CustomContainer(
                  color: Color(0xFF8BF5FA),
                  schemename: '',
                  info: '',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Locations",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),

          ),
          LiveSafe(),
        ],
      )),
    );
  }
}
