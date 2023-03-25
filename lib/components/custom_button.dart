import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {

  final String title;
  final Function onPressed;
  bool loading;
  CustomButton({required this.title, required this.onPressed,this.loading=false});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: Text(title,style: TextStyle(fontSize: 17),),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF3F979B),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )
        ),
      ),
    );
  }
}
