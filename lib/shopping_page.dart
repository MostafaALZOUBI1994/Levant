import 'package:flutter/material.dart';
import 'package:levant/pages_v1/login.dart';
class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
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
      body: _buildItems(),
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
  Widget _buildItems() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          _buildHeader(),
          Padding(
            padding: const EdgeInsets.only(top:125.0),
            child: _buildCards(),
          ),
          _buildpricetag()

        ],
      ),
    );
  }
  Widget _buildHeader(){
    return Container(
      height: MediaQuery.of(context).size.height/3,
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).primaryColor,
      child:Stack(
        children: <Widget>[

          //first ball
          Positioned(
            top:  MediaQuery.of(context).size.height/-30,
            right: MediaQuery.of(context).size.width/3,
            child: Container(
              height: MediaQuery.of(context).size.width/1.1,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200.0),
                color:Color.fromRGBO(255, 59, 68, 1.0),

              ),
            ),
          ),
          //second ball
          Positioned(
            top: MediaQuery.of(context).size.height/17,
            left: MediaQuery.of(context).size.width/3,
            child: Container(
                height: MediaQuery.of(context).size.width/1.2,
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150.0),
                  color:  Color.fromRGBO(255, 59, 68, 1.0),

                )),
          ),
          //back icon
          Positioned(
            top:MediaQuery.of(context).size.height/75,
            child: IconButton(
                alignment: Alignment.topLeft,
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                }),
          ),
          //title
          Positioned(
              top:MediaQuery.of(context).size.height/10,
              left: MediaQuery.of(context).size.height/60,
              child: Text(
                'Shopping Cart',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              )
          ),
        ],
      )
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
                                color: available
                                    ? Colors.grey.withOpacity(0.4)
                                    : Colors.red.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(12.5),
                              ),
                              child: Center(
                                  child: available
                                      ? Container(
                                    height: 12.0,
                                    width: 12.0,
                                    decoration: BoxDecoration(
                                        color: picked[i]
                                            ? Color.fromRGBO(255,33, 44, 1.0)
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
                          available
                              ? Text(
                            'Color: ' + color,
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.grey),
                          )
                              : OutlineButton(
                            onPressed: () {},
                            borderSide: BorderSide(
                                color: Colors.red,
                                width: 1.0,
                                style: BorderStyle.solid),
                            child: Center(
                              child: Text('Find Similar',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0,
                                      color: Colors.red)),
                            ),
                          ),
                          SizedBox(height: 7.0),
                          available
                              ? Text(
                            '\$' + price,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color:   Color.fromRGBO(255, 33, 44,1.0) ,),
                          )
                              : Container(),
                        ],
                      )
                    ],
                  )))),
    );
  }
  Widget _buildCards(){
    return Column(
        children: <Widget>[
          new Expanded(
              child: new ListView.builder(
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return itemCard('Finn Navian-Sofa', 'gray', '248',
                        'assets/chair.jpg', true, 0);
                  })
          )



        ],

    );
  }
  Widget _buildpricetag(){
    return Padding(
        padding: EdgeInsets.only(top: MediaQuery
            .of(context).size.height/1.18),
        child: Container(
            height: 50.0,
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
                    onPressed: () {},
                    elevation: 0.5,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Pay Now',
                      ),
                    ),
                    textColor: Colors.white,
                  ),
                )
              ],
            )));
  }
}
