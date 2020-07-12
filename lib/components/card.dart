import 'package:flutter/material.dart';
class Cards extends StatefulWidget {
  String image;
  String title;
  String detail;
  String price;
  Cards(this.image,this.title,this.detail,this.price);
  @override
  _CardState createState() => _CardState(this.image,this.title,this.detail,this.price);
}

class _CardState extends State<Cards> {
  String image;
  String title;
  String detail;
  String price;
  _CardState(this.image,this.title,this.detail,this.price);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 140,
        padding: EdgeInsets.all(10),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex:1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width:100,height: 100,
                    child: Image.asset(image),
                  )
                ],
              ),
            ),
            Expanded(
              flex:2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(title,style: TextStyle(color: Colors.black),),
                      IconButton(
                        icon: Icon(Icons.favorite),
                      )
                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(detail
                          ,style:TextStyle(
                            color:Colors.black,

                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 40,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(5),bottomLeft:Radius.circular(5)),
                          color:  Color.fromRGBO(255, 33, 44,1.0),
                        ),

                        child: Center(
                          child: Text(
                            price,style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          height: 40,
                          padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight:Radius.circular(5),bottomRight:Radius.circular(5)),
                              color:Color.fromRGBO(255, 59, 68, 1.0),
                            ),

                            child: Center(child:Text("Add to Card",style:TextStyle(color: Colors.white)),)
                        ),
                      )
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
