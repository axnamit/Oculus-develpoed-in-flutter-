import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Register();
  }
}

class _Register extends State<Register> {
  @override
  Widget build(BuildContext context) {
    var x = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Container(
        color: Color(0xff2B2B52),
        child: Column(
          children: <Widget>[
            Container(
              //color: Colors.cyanAccent,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              // margin: EdgeInsets.only(left: 30,top: 70),

              /* Center(
                    child: Text(
                      "Log in",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ),*/
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: x / 27),
                    child: Text(
                      "O",
                      style: TextStyle(
                          fontFamily: "Baron Neue",
                          fontSize: 40,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: x / 6),
                    child: Text("Register",
                        style: TextStyle(
                            fontFamily: "SF Compact Display",
                            fontSize: 28,
                            color: Colors.white,
                            decoration: TextDecoration.none)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: x / 6),
              child: Text("Oculus",
                  style: TextStyle(
                      fontFamily: "Baron Neue",
                      fontSize: 28,
                      color: Colors.white,
                      decoration: TextDecoration.none)),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10),
              width: x / 2,
              height: x / 1.9,
              //color: Colors.pinkAccent,
              child: Material(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  color: Colors.white,
                  elevation: 6,
                  child: Container(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Form(
                      child: ListView(
                         padding: const EdgeInsets.symmetric(vertical: 16.0),
                        children: <Widget>[
                          
                           TextFormField(
                            decoration: InputDecoration(
                              contentPadding: new EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                                
                              hintText: "username",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide:
                                    BorderSide(color: Color(0xff2B2B52),
                                    ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                           TextFormField(
                            decoration: InputDecoration(
                              contentPadding: new EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                              hintText: "password",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide:
                                    BorderSide(color: Color(0xff2B2B52)),
                              ),
                            ),
                          ),
                        ],

                      ),
                    ),
                  )),
            )
          ],
        ));
  }
}
