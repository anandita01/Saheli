import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gsochome/screens/Home_screen.dart';


class Tips extends StatelessWidget {
  const Tips({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
                alignment: Alignment.center,
                child: Text(
                    '''Rape Prevention Tips and Advice


  1. Reduce risk in social situations - Go to parties and social events with a group of friends and stay with the group. Do not leave your drink unattended.


  2. Don't reveal too much on social media - Some social media platforms, such as Foursquare and others, use GPS locating service to tell friends where to find you.
                   
What to Do When Being Raped


1. State clearly and unequivocally that you do not want to engage in sex of any kind with the person. Remember you do not have any obligation to participate in any activity that makes you feel uncomfortable.


2. Arrange a special code word with a close friend or family member that you can say if talking on the phone to them to indicate that you are in a dangerous situation and need help.


3. Make up an excuse as to why you need to leave or that you are having your period, or even that you have a sexually transmitted disease.


4. Look for an escape route or way to get out of the room.


5. Call attention to yourself by screaming or making a scene and yell for help.


6. If someone actually attacks you, scratch him with your fingernails and pull his hair, bite, and kick - do anything to make him let go even for a second and then run. When you get away, go directly to the police. Do not wash your hands or do anything to destroy or contaminate any physical evidence you may have on your body (i.e. perpetrator's skin under your nails).


7. As a last resort, try to humanize yourself in the eyes of your attacker. Try to make the attacker see you as a person rather than objectify you. Talk about your family, your kids, your mother. Tell him he is better than the way he is behaving.


8. If your attacker is armed with a gun or knife, the above tactics may not work effectively. Any act of aggression may cause him to become more violent and angry. However, a last resort, violent attack may represent your only hope of escaping rape. If you choose to physically attack an armed aggressor, your action must be unexpected, sudden, and intensely painful. Target his most vulnerable spots, such as testicles, eye sockets, instep, or windpipe with a lethal intention.''',
                                       
                    style: TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.w300)
                        )
                        ),
          ),
        ]),
      ),
    );
  }
}
