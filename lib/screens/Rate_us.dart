import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:share_plus/share_plus.dart';

class RateUs extends StatelessWidget {
  RateUs({Key? key}) : super(key: key);
  double rating = 4.0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Container(
        width: size.width,
        height: size.height,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RatingDialog(
                title: Text('Rate Us', selectionColor: Colors.blueAccent,),
                //   message: Text(" Tap to start Rating "),
                image: Icon(Icons.star, size: 100, color: Colors.red),
                submitButtonText: 'Submit',
                onSubmitted: (response) {
                  print('onSubmitPressed: rating = ${response.rating}');
                  print('Comment :${response.comment}');
                }),
            SizedBox(
              width: 100,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan.shade300,
                ),
                onPressed: (){
                  Share.share("");
                }, child: Icon(Icons.share_rounded,size: 30,), ),
            )
          ],
        ),
      ),
    );
  }
}