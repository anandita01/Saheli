import 'package:flutter/material.dart';

class ImageGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      children: [
        Image.asset('assets/image1.jpeg'),
        Image.asset('assets/image2.jpeg'),
        Image.asset('assets/image3.jpeg'),
        Image.asset('assets/image4.jpeg'),
      ],
    );
  }
}
