import 'package:flutter/material.dart';
import 'package:levant/pages_v1/google-map.dart';
import 'package:levant/pages_v1/main-page.dart';



class Loca extends StatefulWidget {
  @override
  _LocaState createState() => _LocaState();
}

class _LocaState extends State<Loca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height/3.5,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).primaryColor.withOpacity(0.9),
                  Color.fromRGBO(161 , 10, 17, 0.85),
                ],
              ),

            ),
            child:Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 15.0),
                      Container(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => googlemap()),
                            );
                          },
                          color: Colors.white,
                          iconSize: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Your Location',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            )
          ),
          Spacer(),
          buildTextFiled(Icons.location_city,"City"),
          buildTextFiled(Icons.place,"Street"),
          buildTextFiled(Icons.confirmation_number,"Zip Code"),
          buildTextFiled(Icons.phone,"Phone Number"),
          Spacer(),
          buildButton(),
          Spacer(),
        ],
      ),
    );
  }
  Widget buildTextFiled(IconData icon,String title){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Container(
        height: 45,
        padding: EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.white,

            boxShadow: [
              BoxShadow(
                  color: Theme.of(context).primaryColor.withOpacity(0.9), blurRadius: 3)
            ]),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(
              icon,
              color: Colors.grey,
            ),
            hintText: title,
          ),
        ),
      ),
    );
  }
  Widget buildButton(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            color:Theme.of(context).primaryColor.withOpacity(0.9),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Center(
          child: FlatButton(
            child: Text(
              'Confirm'.toUpperCase(),
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SocialHome()),
              );
            },
          ),
        ),
      ),
    );
  }
}