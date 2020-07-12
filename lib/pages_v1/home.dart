import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:levant/pages_v1/login.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }

  @override
  Widget build(BuildContext context) {
    double h  =MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    print("$w   $h");
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              //Red Header Container
              redHeaderBackground(),
              SizedBox(height: MediaQuery.of(context).size.height/54.4),
              //List of Categories
              buildListOfCategoried(),
              itemCard('FinnNavian', 'assets/images/ottoman.jpg', false),
              itemCard('FinnNavian', 'assets/images/anotherchair.jpg', true),
              itemCard('FinnNavian', 'assets/images/chair.jpg', true)
            ],
          )
        ],
      ),
    );
  }

  Widget itemCard(String title, String imgPath, bool isFavorite) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
      child: Container(
        height: 150.0,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(
              width: 140.0,
              height: 150.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover)),
            ),
            SizedBox(width: 4.0),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 45.0),
                    Material(
                      elevation: isFavorite ? 0.0 : 2.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: isFavorite
                                ? Colors.grey.withOpacity(0.2)
                                : Colors.white),
                        child: Center(
                          child: isFavorite
                              ? Icon(Icons.favorite_border)
                              : Icon(Icons.favorite, color: Colors.red),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5.0),
                Container(
                  width: 175.0,
                  child: Text(
                    'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 12.0),
                  ),
                ),
                SizedBox(height: 5.0),
                Row(
                  children: <Widget>[
                    SizedBox(width: 35.0),
                    Container(
                      height: 40.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.9),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5))

                      ),

                      child: Center(
                        child: Text(
                          '\$248',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5))

                      ),
                      child: Center(
                        child: Text(
                          'Add to cart',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget redHeaderBackground(){
    return Stack(
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
        ),
        //data
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height/54.4,),
            //top header
            Row(
              children: <Widget>[
                SizedBox(width: 15.0),
                Container(
                  alignment: Alignment.topLeft,
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2.0),
                      image: DecorationImage(
                          image: AssetImage('assets/images/chris.jpg'))),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width - 120.0),
                Container(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    color: Colors.white,
                    iconSize: 30.0,
                  ),
                ),

              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/54.4,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child:Text(
                    'Hello , Jean',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color:Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/54.4,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child:Text(
                    'What do you want to buy?',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.white,
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/13.6),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Material(
                elevation: 5.0,

                borderRadius: BorderRadius.circular(5.0),
                child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,
                            color:
                            Theme.of(context).primaryColor,
                            size: 30.0),
                        contentPadding:
                        EdgeInsets.only(left: 15.0, top: 15.0),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Quicksand'))),
              ),
            ),

          ],
        )
      ],
    );
  }
  Widget buildListOfCategoried(){
    return Stack(
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height/54.4,),
        Material(
            elevation: 1.0,
            child: Container(
                height: MediaQuery.of(context).size.height/10.9,
                color: Colors.white
            )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildCategory('Sofas','assets/images/sofas.png'),
            buildCategory('Wardrobe','assets/images/wardrobe.png'),
            buildCategory('Desk','assets/images/desks.png'),
            buildCategory('Dresser','assets/images/dressers.png'),
          ],
        )
      ],
    );
  }
  Widget buildCategory(String title,String image){
    return Container(
      height: MediaQuery.of(context).size.height/10.9,
      width: MediaQuery.of(context).size.width / 4,
      child: Column(
        children: <Widget>[
          Container(
            height:MediaQuery.of(context).size.height/16.4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image))),
          ),
          Text(
            title,
            style: TextStyle(fontFamily: 'Quicksand'),
          )
        ],
      ),
    );
  }
}