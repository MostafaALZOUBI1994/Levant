import 'package:flutter/material.dart';

import 'card.dart';
class Listofcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        children: <Widget>[
          Cards("assets/chair.jpg","item1","jfhefkheiihfihjfieh","220"),
      Cards("assets/chair.jpg","item1","jfhefkheiihfihjfieh","220"),
      Cards("assets/chair.jpg","item1","jfhefkheiihfihjfieh","220"),
      ],),
    );


  }
}
