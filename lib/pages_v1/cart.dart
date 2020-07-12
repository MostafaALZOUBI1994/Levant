import 'package:flutter/material.dart';
import 'package:levant/pages_v1/google-map.dart';


class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {


  List picked = [false, false];
  int totalAmount = 0;

  pickToggle(index) {
    setState(() {
      picked[index] = !picked[index];
      getTotalAmount();
    });
  }

  getTotalAmount() {
    var count = 0;
    for (int i = 0; i < picked.length; i++) {
      if (picked[i]) {
        count = count + 1;
      }
      if (i == picked.length - 1) {
        setState(() {
          totalAmount = 248 * count;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          shrinkWrap: true,
          children: <Widget>[
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: double.infinity,
                    ),
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
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/42.66),
                      child: IconButton(
                          alignment: Alignment.topLeft,
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {}),
                    ),
                    Positioned(
                        top: 75.0,
                        left: 15.0,
                        child: Text(
                          'Shopping Cart',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 30.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
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
                    Positioned(
                      top: MediaQuery.of(context).size.height/4.26,
                      child: Column(
                        children: <Widget>[
                          itemCard('Finn Navian-Sofa', 'gray', '248',
                              'assets/images/otto5.jpg', true, 0),
                          itemCard('Finn Navian-Sofa', 'gray', '248',
                              'assets/images/anotherchair.jpg', true, 1),
                          itemCard('Finn Navian-Sofa', 'gray', '248',
                              'assets/images/chair.jpg', false, 1)
                        ],
                      ),
                    ),
                    Positioned(
                      bottom:0,
                      child:Container(
                          height: MediaQuery.of(context).size.height/12.8,
                          width: double.infinity,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text('Total: \$' + totalAmount.toString()),
                              SizedBox(width: 10.0),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RaisedButton(
                                  shape: new RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(5.0)),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => googlemap()),
                                    );
                                  },

                                  elevation: 0.5,
                                  color: Theme.of(context).primaryColor.withOpacity(0.9),
                                  child: Center(
                                    child: Text(
                                      'Pay Now',
                                    ),
                                  ),
                                  textColor: Colors.white,
                                ),
                              )
                            ],
                          ))
                    )
                  ]
              )
        ])
      ]),
    );
  }

  Widget itemCard(itemName, color, price, imgPath, available, i) {
    return InkWell(
      onTap: () {
        if (available) {
          pickToggle(i);
        }
      },
      child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Material(
              borderRadius: BorderRadius.circular(10.0),
              elevation: 3.0,
              child: Container(
                  padding: EdgeInsets.only(left: 15.0, right: 10.0),
                  width: MediaQuery.of(context).size.width - 20.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              height: 25.0,
                              width: 25.0,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.4),

                                borderRadius: BorderRadius.circular(12.5),
                              ),
                              child: Center(
                                  child: available
                                      ? Container(
                                    height: 12.0,
                                    width: 12.0,
                                    decoration: BoxDecoration(
                                        color: picked[i]
                                            ? Theme.of(context).primaryColor.withOpacity(0.9)
                                            : Colors.grey
                                            .withOpacity(0.4),
                                        borderRadius:
                                        BorderRadius.circular(6.0)),
                                  )
                                      : Container()))
                        ],
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        height: 150.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.contain)),
                      ),
                      SizedBox(width: 4.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                itemName,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                              SizedBox(width: 7.0),
                              available
                                  ? picked[i]
                                  ? Text(
                                'x1',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    color: Colors.grey),
                              )
                                  : Container()
                                  : Container()
                            ],
                          ),
                          SizedBox(height: 7.0),
                          Text(
                            'Color: ' + color,
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.grey),
                          ),
                          SizedBox(height: 7.0),
                          Text(
                            '\$' + price,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Theme.of(context).primaryColor.withOpacity(0.9)),
                          ),

                        ],
                      )
                    ],
                  )))),
    );
  }
}