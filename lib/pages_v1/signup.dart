import 'package:flutter/material.dart';
import 'package:levant/pages_v1/login.dart';
import 'package:levant/pages_v1/main-page.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpState();
  }
}

class _SignUpState extends State<SignUp> {

  // f45d27
  // f5851f
  /*
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(121, 121, 121, 1.0),
                      Color.fromRGBO(119, 119, 119, 1.0),
                    ],
                  ),

                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30)
                  )

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset("assets/LOGO.png")
                  ),
                  Spacer(),


                ],
              ),
            ),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width/1.2,
              height: 45,

              padding: EdgeInsets.only(
                  top: 4,left: 16, right: 16, bottom: 4
              ),
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.all(
                      Radius.circular(5)
                  ),


                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color:Theme.of(context).primaryColor.withOpacity(0.9),
                        blurRadius: 5
                    )
                  ]
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.vpn_key,
                    color: Colors.grey,
                  ),
                  hintText: 'Username',
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/1.2,
              height: 45,
              margin: EdgeInsets.only(top: 32),
              padding: EdgeInsets.only(
                  top: 4,left: 16, right: 16, bottom: 4
              ),
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.all(
                      Radius.circular(5)
                  ),


                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color:Theme.of(context).primaryColor.withOpacity(0.9),
                        blurRadius: 5
                    )
                  ]
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,

                  icon: Icon(Icons.email,
                    color: Colors.grey,
                  ),
                  hintText: 'Email',
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/1.2,
              height: 45,
              margin: EdgeInsets.only(top: 32),
              padding: EdgeInsets.only(
                  top: 4,left: 16, right: 16, bottom: 4
              ),
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.all(
                      Radius.circular(5)
                  ),


                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color:Theme.of(context).primaryColor.withOpacity(0.9),
                        blurRadius: 5
                    )
                  ]
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.vpn_key,
                    color: Colors.grey,
                  ),
                  hintText: 'Password',
                ),
              ),
            ),


            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 32
                ),
                child: Text('Forgot Password ?',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
            ),
            Spacer(),

            Container(
              height: 45,
              width: MediaQuery.of(context).size.width/1.2,
              decoration: BoxDecoration(
                /*
                        gradient: LinearGradient(

                            colors: [
                              Color.fromRGBO(255, 33, 44,1.0) ,
                              Color.fromRGBO(255, 110, 117, 1.0),
                            ],
                          ),
                         */
                  color:Theme.of(context).primaryColor.withOpacity(0.9),

                  borderRadius: BorderRadius.all(
                      Radius.circular(5)
                  )


              ),
              child: Center(
                child: FlatButton(

                  child: Text('Sign Up'.toUpperCase(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SocialHome()),
                    );
                  },
                ),
              ),


            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 0
                ),
                child: FlatButton(
                    child: Text('already have an account',
                      style: TextStyle(

                        color: Theme.of(context).primaryColor.withOpacity(0.9) ,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    }
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
