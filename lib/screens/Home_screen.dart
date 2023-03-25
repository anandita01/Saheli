import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:gsochome/screens/add_contacts.dart';

import '../widgets/customcontainer.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    const number = '+917678471051';

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
              child: Text('MENU'),
              decoration: BoxDecoration(
                color: Color(0xFF3F979B),
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
            ListTile(
              title: Text('Option 2'),
              onTap: () {
                // Do something
              },
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
                CustomContainer(
                  color: Color(0xFF8BF5FA),
                  schemename: '2017 Scheme',
                  info: '',
                ),
                CustomContainer(
                  color: Color(0xFF3F979B),
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
        ],
      )),
    );
  }
}
