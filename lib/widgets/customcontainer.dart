/*import 'package:flutter/material.dart';


class CustomContainer extends StatelessWidget {
  //final Color color;
  final String schemename;
  final String info;


  const CustomContainer({Key? key,  required this.schemename, required this.info}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 300,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.4,
                0.6,
                0.9,
              ],
              colors: [
                Color(0XFF57C5B6),
                Color(0XFF159895),
                Color(0XFF1A5F7A),
                Color(0XFF002B5B),
              ],
              )
      ),
     
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              schemename,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              info,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/








import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';


class CustomContainer extends StatelessWidget {
  //final Color color;
  final String schemename;
  final String info;


  const CustomContainer({
    Key? key,
    required this.schemename,
    required this.info,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 220,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.4,
                0.6,
                0.9,
              ],
              colors: [
                Color(0XFF57C5B6),
                Color(0XFF159895),
                Color(0XFF1A5F7A),
                Color(0XFF002B5B),
              ],
              )
     
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              schemename,
              style: TextStyle(
                decoration: TextDecoration.underline,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,),
            ),
            SizedBox(
              height: 10.0,
            ),
            ReadMoreText(
              info,
              trimLines: 2,
              colorClickableText: Color.fromARGB(255, 0, 0, 0),
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
