import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {
  final Color color;
  final String schemename;
  final String info;

  const CustomContainer({Key? key, required this.color, required this.schemename, required this.info}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 300,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
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
