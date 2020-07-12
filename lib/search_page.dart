import 'package:flutter/material.dart';
import 'package:levant/pages_v1/login.dart';
import 'package:levant/person.dart';

import 'components/card.dart';
import 'components/horizontal_listview.dart';
import 'components/list_of_card.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Person person = new Person("Pino");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(shrinkWrap: true, children: <Widget>[
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[_buildPage()])
      ]),
      bottomNavigationBar: Material(
          elevation: 7.0,
          color: Colors.white,
          child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          color: Colors.white,
                          child: Icon(
                            Icons.shopping_basket,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          color: Colors.white,
                          child: Icon(
                            Icons.account_box,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          color: Colors.white,
                          child: Icon(
                            Icons.shopping_cart,
                            color:  Color.fromRGBO(255, 33, 44,1.0) ,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          color: Colors.white,
                          child: Icon(
                            Icons.account_box,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ]),
              ))),
    );
  }

  Widget _buildPage() {
    return Stack(children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
      ),
      Container(
        height: MediaQuery.of(context).size.height / 4,
        width: double.infinity,
        color: Color.fromRGBO(255, 33, 44, 1.0),
      ),
      //first ball
      Positioned(
        top: MediaQuery.of(context).size.height / -30,
        right: MediaQuery.of(context).size.width / 3,
        child: Container(
          height: MediaQuery.of(context).size.width / 1.1,
          width: MediaQuery.of(context).size.width / 1.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200.0),
            color: Color.fromRGBO(250, 54, 63, 1.0),
          ),
        ),
      ),
      //second ball
      Positioned(
        top: MediaQuery.of(context).size.height / 17,
        left: MediaQuery.of(context).size.width / 3,
        child: Container(
            height: MediaQuery.of(context).size.width / 1.2,
            width: MediaQuery.of(context).size.width / 1.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150.0),
              color: Color.fromRGBO(255, 59, 68, 1.0),
            )),
      ),
      //white background
      Positioned(
        bottom: 0.0,
        right: 0.0,
        child: Container(
          height: 3*MediaQuery.of(context).size.height/4,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
        ),
      ),
      //top header image
      Positioned(
        left: 10,
        child: Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Container(
              width: 50.0,
              height: 50.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new AssetImage("assets/person1.jpg")))),
        ),
      ),
      //top header icon
      Positioned(
        right: 10,
        child: Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: IconButton(
              alignment: Alignment.topRight,
              icon: Icon(Icons.menu),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              }),
        ),
      ),
      //title
      Positioned(
          top: 75.0,
          left: 15.0,
          child: Text('Hello ${person.name}',
              style: Theme.of(context).textTheme.display1)),
      //subtitle
      Positioned(
          top: 110.0,
          left: 15.0,
          child: Text('What do you want to buy?',
              style: Theme.of(context).textTheme.display2)),
      //search
      Positioned(
          top: MediaQuery.of(context).size.height / 4.4,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child:Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.all(Radius.circular(5.0))
                  ,
                  boxShadow: [
                    new BoxShadow(
                      color: Color.fromRGBO(244, 244, 244, 1.0),
                      offset: new Offset(1.0, 5.0),
                    )
                  ],
                ),
                child: TextFormField(
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  autofocus: false,

                  decoration: InputDecoration(
                      hintText: 'search',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(121, 121, 121, 1.0),
                      ),
                      icon: const Icon(
                        Icons.search,
                        color: Color.fromRGBO(245, 23, 36, 1.0),
                      )),
                ),
              ),
            ),
          ),
      //list of product
      Positioned(
          top: MediaQuery.of(context).size.height /3.1,
          width: MediaQuery.of(context).size.width,
        child:  Container(

            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.all(Radius.circular(5.0)),
              boxShadow: [
                new BoxShadow(
                  color: Color.fromRGBO(244, 244, 244, 1.0),
                  offset: new Offset(1.0, 5.0),
                ),
                new BoxShadow(
                  color: Color.fromRGBO(244, 244, 244, 1.0),
                  offset: new Offset(-1.0, -2.0),
                )
              ],
            ),
            child:HorizontalList()
        ),


      ),

      //card
      Positioned(
        top: MediaQuery.of(context).size.height /2.1,
        left:0,
        width: MediaQuery.of(context).size.width,
        child:Listofcard()
      )
      //total price
    ],

    );
  }
}
