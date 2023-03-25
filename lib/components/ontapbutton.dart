import 'package:flutter/material.dart';
class OnTapbutton extends StatelessWidget {
  @required
  final String title;
  final Function onPressed;

  OnTapbutton({Key? key,  required this.title, required this.onPressed}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      

      child: TextButton(onPressed: (){
        onPressed();
      }, child: Text(title,
      style: TextStyle(fontSize: 18),),),
      

    );
  }
}
