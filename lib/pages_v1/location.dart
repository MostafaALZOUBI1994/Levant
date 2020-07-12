import 'package:flutter/material.dart';
import 'package:levant/pages_v1/main-page.dart';


class Location extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    final width =size.width;
    final height =size.height;
    print('width is $width; height is $height');
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(





                 child: _buildPage(context),

                ));
  }

  Widget _buildPage(BuildContext context) {
    return Column(


      children: <Widget>[

        Container(
          height: MediaQuery.of(context).size.height/3.5,
          width: double.infinity,
          child: Row(
            children: <Widget>[
              SizedBox(width: 15.0),

              Container(

                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SocialHome()),
                        );
                      },
                      color: Colors.white,
                      iconSize: 30.0,
                    ),
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
              ),
              SizedBox(height: 15.0),
            ],
          ),
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
        ),

        //white background




        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,


          children: <Widget>[

          Container(

          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(255, 59, 68, 1.0), blurRadius: 5)
              ]),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(
                Icons.email,
                color: Colors.grey,
              ),
              hintText: 'City',
            ),
          ),
        ),

        Container(
          width: MediaQuery.of(context).size.width / 1.2,
          height: 45,
          padding: EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(255, 59, 68, 1.0), blurRadius: 5)
              ]),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(
                Icons.directions_car,
                color: Colors.grey,
              ),
              hintText: 'Street',
            ),
          ),
        ),

        Container(
          width: MediaQuery.of(context).size.width / 1.2,
          height: 45,
          padding: EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(255, 59, 68, 1.0), blurRadius: 5)
              ]),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(
                Icons.local_post_office,
                color: Colors.grey,
              ),
              hintText: 'Zip Code',
            ),
          ),
        ),

        Container(
          width: MediaQuery.of(context).size.width / 1.2,
          height: 45,
          padding: EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(255, 59, 68, 1.0), blurRadius: 5)
              ]),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(
                Icons.phone,
                color: Colors.grey,
              ),
              hintText: 'Phone Number',
            ),
          ),
        ),

        Container(
          height: 45,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(255, 33, 44, 1.0),
                  Color.fromRGBO(255, 110, 117, 1.0),
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Center(
            child: FlatButton(
              child: Text(
                'Confirm'.toUpperCase(),
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
          ),
        ),

      ],)


      ],
    );
  }
}
