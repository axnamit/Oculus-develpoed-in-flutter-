import 'package:flutter/material.dart';

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
          height: 896,
          padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo/splash_screen.png'),
                    fit: BoxFit.cover)
            ),
            child: Container(

              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 25,top: 40),
                    alignment: Alignment.topLeft,
                    child: Text("Oculus",style: TextStyle(color: Colors.white,fontSize: 40,fontFamily: "Baron Neue"),),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25,top: 40),
                    alignment: Alignment.topLeft,
                    child: Text("Have a great family time",style: TextStyle(color: Colors.white,fontSize: 40,fontFamily: "Baron Neue"),),
                  ),
                  Container(
                    child: Text("Stay connected to your loved ones",style: TextStyle(color: Colors.white,fontSize: 40,fontFamily: "Baron Neue"),),
                  )
                ],
              ),
            )
        )
    );
  }
}
