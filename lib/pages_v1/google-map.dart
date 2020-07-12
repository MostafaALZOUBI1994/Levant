import 'package:flutter/material.dart';
import 'package:levant/pages_v1/rrrf.dart';


class googlemap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/Google.jpg",fit: BoxFit.fitHeight,),
          Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: Container(

              height: 45,
              width: MediaQuery.of(context).size.width/1.2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 33, 44,1.0) ,
                      Color.fromRGBO(255, 110, 117, 1.0),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                      Radius.circular(5)
                  )
              ),
              child: Center(
                child: FlatButton(

                  child: Text('Add Location'.toUpperCase(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  onPressed:() {

                  },
                ),
              ),

            ),
          ),
        ],
      ),
    );
     */
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/Google.jpg"),fit: BoxFit.fitHeight)
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.black,
                    onPressed: () {}),
                Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )))
              ],
            ),
          ),
          Positioned(
            bottom: 0,


            child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Loca()),
                          );
                        },
                        elevation: 0.5,
                        color: Theme.of(context).accentColor.withOpacity(0.9),
                        child: Center(
                          child: Text(
                            'Add Address',
                          ),
                        ),
                        textColor: Colors.white,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        onPressed: () {},
                        elevation: 0.5,
                        color: Theme.of(context).primaryColor.withOpacity(0.9),
                        child: Center(
                          child: Text(
                            'Find Location',
                          ),
                        ),
                        textColor: Colors.white,
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
