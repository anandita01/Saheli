import 'package:flutter/material.dart';
import 'package:gsochome/widgets/imagegrid.dart';

class SelfDefence extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF3F979B),
          title: Text('Self Defence '),
        ),
        body: ImageGrid());
  }
}
