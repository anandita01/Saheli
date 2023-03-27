import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:gsochome/screens/add_contacts.dart';
import 'package:gsochome/widgets/live_safe.dart';
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
