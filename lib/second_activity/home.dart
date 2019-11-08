import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oculus/login_screen/login.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Home();
  }
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo/splash_screen.png'),
                    fit: BoxFit.cover)),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    // color: Colors.yellow,
                    padding: EdgeInsets.only(left: 12, top: 40),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Oculus",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontFamily: "Baron Neue"),
                    ),
                  ),
                  Container(
                    //color: Colors.yellow,
                    padding: EdgeInsets.only(right: 80, left: 10, top: 25),
                    alignment: Alignment.topLeft,
                    // width: 300,
                    child: Text(
                      "Have a great family time",
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontFamily: "SF Compact Display",
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10, top: 0),
                    child: Text(
                      "Stay connected to your loved ones",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "SF Compact Display",
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Container(
                      margin: (EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 2)),
                      padding: EdgeInsets.only(bottom: 0),

                      //color: Color.fromRGBO(190, 202, 231, 100),
                      alignment: Alignment.bottomCenter,
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        color: Color.fromRGBO(190, 202, 231, 100),
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          minWidth: 480,
                          height: 60,
                          child: Text(
                            "Start using Oculus",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 21,
                                fontFamily: "SF Compact Display"),
                          ),
                         onPressed: (){
                           naviagteTOLogin(context);
                         },
                        ),
                      ))
                ],
              ),
            )));

    /*Card(
                      color: Color.fromRGBO(190, 202, 231, 100),
                      child: Center(
                        child: Text(
                          "Start using Oculus",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 21,
                              fontFamily: "SF Compact Display"),
                        ),
                      ),
                    ),*/
  }
}

Future naviagteTOLogin(context) async{
  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
}