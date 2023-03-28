import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:gsochome/screens/aboutus.dart';
import 'package:gsochome/screens/add_contacts.dart';
import 'package:gsochome/screens/call_gov.dart';
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
      drawer:  Drawer(
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

           /* ListTile(
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
           
           Center(  
          child: GridView.extent(  
            primary: false,  
            padding: const EdgeInsets.all(6),  
            crossAxisSpacing: 10,  
            mainAxisSpacing: 10,  
            maxCrossAxisExtent: 200.0,  
            children: <Widget>[  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('First', style: TextStyle(fontSize: 20)),  
                color: Colors.yellow,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Second', style: TextStyle(fontSize: 20)),  
                color: Colors.blue,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Third', style: TextStyle(fontSize: 20)),  
                color: Colors.blue,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Four', style: TextStyle(fontSize: 20)),  
                color: Colors.yellow,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Fifth', style: TextStyle(fontSize: 20)),  
                color: Colors.yellow,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Six', style: TextStyle(fontSize: 20)),  
                color: Colors.blue,  
              ),  
            ],  

              /*Card
              (margin: const EdgeInsets.fromLTRB(50, 220, 50, 10),
          color: Color(293462),
          child: TextButton(
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
  ),
  onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => About_Us()));
                      },
  child: Text('About this App',
  textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 20,
    color: Color.fromARGB(255, 255, 255, 255),
  ),),
)
            ),*/

            


          )
           ) 
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
                      onPressed:()  {
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
                        onPressed: () {},
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
                      icon: const Icon(Icons.emergency),
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
