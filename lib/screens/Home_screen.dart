import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:gsochome/screens/Rate_us.dart';
import 'package:gsochome/screens/aboutus.dart';
import 'package:gsochome/screens/add_contacts.dart';
import 'package:gsochome/screens/call_gov.dart';
import 'package:gsochome/screens/login_screen.dart';
import 'package:gsochome/screens/safehome.dart';
import 'package:gsochome/screens/self_defence.dart';
import 'package:gsochome/widgets/live_safe.dart';
import '../widgets/customcontainer.dart';
//import 'package:gradient_app_bar/gradient_app_bar.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(50, 20, 50, 10),
              color: Color(0XFF159895),
              child: SizedBox(
                width: 50,
                height: 55,
                child: ListTile(
                  title: Text(
                    'Trusted Contacts',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 254, 255, 255),
                    ),
                  ),
                  onTap: () {
                    // Do something
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddContactsPage(),
                        ));
                  },
                ),
              ),
            ),
            /*ListTile(
              title: Text('Trusted Contacts'),
              onTap: () {
                // Do something
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddContactsPage(),
                    ));
              },
            ),*/

            /*Card(
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
                    onPressed:()  async {},
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
                    onPressed:()  async {},
                  ),
          ),
        ),
            ),*/

            Card(
              margin: const EdgeInsets.fromLTRB(50, 20, 50, 10),
              color: Color(0XFF1A5F7A),
              child: SizedBox(
                width: 50,
                height: 55,
                child: ListTile(
                  title: Text(
                    'About this app',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 254, 255, 255),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => About_Us()));
                  },
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(50, 20, 50, 10),
              color: Color(0XFF002B5B),
              child: SizedBox(
                width: 50,
                height: 55,
                child: ListTile(
                  title: Text(
                    'Rate us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 254, 255, 255),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RateUs()));
                  },
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(50, 20, 50, 10),
              color: Color(0XFF159895),
              child: SizedBox(
                width: 50,
                height: 55,
                child: ListTile(
                  title: Text(
                    'Log Out',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 254, 255, 255),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(50, 20, 50, 10),
              color: Color(0XFF1A5F7A),
              child: SizedBox(
                width: 50,
                height: 55,
                child: ListTile(
                  title: Text(
                    'Tips',
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
          child: SingleChildScrollView(
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Calls_Gov()));
                      },
                    ),
                  ),
                  /*Ink(
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
                  ),*/

                  Ink(
                    decoration: const ShapeDecoration(
                      color: Color.fromARGB(255, 182, 23, 20),
                      shape: CircleBorder(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        iconSize: 60,
                        icon: const Icon(Icons.sos_rounded),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SafeHome()));
                        },
                      ),
                    ),
                  ),
                  Ink(
                    decoration: const ShapeDecoration(
                      color: Color(0xFF3F979B),
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      iconSize: 40,
                      icon: const Icon(Icons.dangerous_rounded),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelfDefence()));
                      },
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
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
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
                    /*decoration: BoxDecoration(
                      color: Color(0xFF8BF5FA),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/BetiPadhao.jpg'),
                        fit: BoxFit.fill,
                      ),*/
                    schemename: 'Beti Bachao Beti Padhao Scheme',
                    info:
                        '''Launched on 22nd January 2015 by the Prime Minister of India in Haryana, the Beti Bachao Beti Padhao Scheme ensures survival, protection and education of girl children. The scheme aims to address issues of the declining sex ratio over the past few years, create social awareness and enhance the efficiency of welfare services developed for girls. ''',
                  ),
                  CustomContainer(
                    schemename: 'Working Women Hostel',
                    info:
                        '''To promote safe accommodation and environment for working women and provide daycare facilities for their children, the Government of India has introduced the 'Working Women Hostel Scheme'. Through this women empowerment scheme, the Government provides grant-in-aid for construction and new hostel buildings and extension of an existing building in rented premises.''',
                  ),
                  CustomContainer(
                    schemename: 'One Stop Centre Scheme',
                    info:
                        '''Next in the list of women empowerment schemes in India comes One Stop Centre Scheme. It is a centrally sponsored scheme and is funded through the Nirbhaya fund. State governments receive 100% central assistance to protect women affected by violence (gender-based such as acid attacks, rape, and sexual harassment) in public and private spaces. ''',
                  ),
                  CustomContainer(
                    schemename: 'Women Helpline Scheme',
                    info:
                        '''Women Helpline Scheme is one of the government schemes for women empowerment that intends to give 24x7 emergency responses to women affected by violence in private or public spaces. The universalisation of women helpline numbers has been done in every State and Union Territory through a single toll-free number (181) that provides immediate support to women nationwide.''',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "LOCATIONS",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            LiveSafe(),
          ],
        ),
      )),
    );
  }
}
// import 'package:flutter/material.dart';


// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Drawer with GridView'),
//       ),
//       drawer: MyDrawer(),
//       body: Center(
//         child: Text('Tap the menu icon to open the drawer.'),
//       ),
//     );
//   }
// }
// class MyDrawer extends StatelessWidget {
//   final List<DrawerItem> drawerItems = [
//     DrawerItem(icon: Icons.home, title: 'Home'),
//     DrawerItem(icon: Icons.favorite, title: 'Favorites'),
//     DrawerItem(icon: Icons.settings, title: 'Settings'),
//     DrawerItem(icon: Icons.help, title: 'Help'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           DrawerHeader(
//             decoration: BoxDecoration(color: Colors.blue),
//             child: Text(
//               'Drawer Header',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//           Expanded(
//             child: GridView.count(
//               crossAxisCount: 2,
//               children: drawerItems.map((item) {
//                 return InkWell(
//                   onTap: () {
//                     Navigator.pop(context); // close the drawer
//                     // handle item tap
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(item.icon),
//                       SizedBox(height: 8),
//                       Text(item.title),
//                     ],
//                   ),
//                 );
//               }).toList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class DrawerItem {
//   final IconData icon;
//   final String title;

//   DrawerItem({required this.icon, required this.title});
// }
