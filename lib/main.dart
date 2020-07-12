/*
import 'package:flutter/material.dart';
import 'package:flutter_app_levant_v1/search_page.dart';
import 'package:flutter_app_levant_v1/shopping_page.dart';
import 'DetailPage.dart';
import 'loginPage.dart';

void main() => runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Color.fromRGBO(245, 23, 36, 1.0),
      textTheme: TextTheme(
        display1: TextStyle(fontSize: 25.0, color: Colors.white),
        display2: TextStyle(fontSize: 20.0, color: Colors.white),
        body1:TextStyle(fontSize: 12.0, color: Colors.white,),
        body2:TextStyle(fontSize: 12.0, color: Colors.black),
        title: TextStyle(fontSize: 26.0, color: Colors.white,),

      ),
    ),

    home: DetailPage(),
    debugShowCheckedModeBanner: false,

));


 */
import 'package:flutter/material.dart';
import 'package:levant/pages_v1/login.dart';
import 'package:levant/pages_v1/main-page.dart';

void main() => runApp(SocialApp());

class SocialApp extends StatelessWidget {
  final pages = <String, WidgetBuilder> {
    SocialHome.tag: (context) => SocialHome(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery',
      theme: ThemeData(
        primaryColor:  Color.fromRGBO(238, 28, 37, 1.0),
        //primaryColor: Color.fromRGBO(255,33,44,1.0),
        accentColor: Color.fromRGBO(121, 121, 121, 1.0),
        primarySwatch: Colors.red,
      ),
      home: LoginPage(),
      routes: pages,
    );
  }
}
