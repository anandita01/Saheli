import 'package:flutter/material.dart';
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
                Colors.yellow,
                Colors.red,
                Colors.indigo,
                Colors.teal,
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
