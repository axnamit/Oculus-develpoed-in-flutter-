import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Login();
  }
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo/splash_screen.png'),
                    fit: BoxFit.cover)),
            child: Column(
              children: <Widget>[
                Container(
                  //color: Colors.cyanAccent,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 5,

                  child: Center(
                    child: Text(
                      "Log in",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ),
                ),
                Container(
                 
                //  width: 200, //MediaQuery.of(context).size.width/2,
                 // height: 200, //MediaQuery.of(context).size.height / 4,

                  child: Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: Colors.white,
                    elevation: 12,
                    child: Container(
                       margin: EdgeInsets.all(25),
                      width: 100,
                      height: 100,
                      // color: Colors.red,
                      padding: EdgeInsets.all(50),
                      decoration: BoxDecoration(
                        
                        image: DecorationImage(
                            image: AssetImage('assets/images/profile.jpg'),
                            fit: BoxFit.fill,
                            ),
                        borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
