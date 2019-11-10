import 'package:flutter/material.dart';

class Register extends StatefulWidget{
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
      color: Colors.red,
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
  margin: EdgeInsets.only(top: 20),
  width: x/2,
  height: x/2.5,
  color: Colors.pinkAccent,

  child: Form(
    child: Column(
      children: <Widget>[
        TextFormField(

        )
      ],
    ),
  ),

)



          ],
        ));

  }
}

