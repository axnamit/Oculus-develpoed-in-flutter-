import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oculus/login_screen/register.dart';

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
    var x = MediaQuery.of(context).size.height;
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Container(
            color: Color(0xff2B2B52),
            /*  decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo/splash_screen.png'),
                    fit: BoxFit.cover)),*/
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
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: x / 6),
                        child: Text("Log in",
                            style: TextStyle(
                                fontFamily: "SF Compact Display",
                                fontSize: 28,
                                color: Colors.white)),
                      ),
                    ],
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
                ),
                Container(
                    width: x / 3,
                    height: x / 17,
                    //color: Colors.white,
                    child: Center(
                      child: Text(
                        "Log in with Aanhath",
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontFamily: "SF Compact Display",
                        ),
                      ),
                    )),
                Container(
                    width: x / 2,
                    height: x / 17,
                    margin: EdgeInsets.only(top: 10),
                    //color: Colors.white,
                    child: Center(
                      child: Text(
                        "This account shows as default because it was used to log in last time the app was used.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: "SF Compact Display",
                        ),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(top: x / 4),
                    padding: EdgeInsets.only(bottom: 0),
                    width: x / 2,

                    //color: Color.fromRGBO(190, 202, 231, 100),
                    alignment: Alignment.bottomCenter,
                    child: Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      color: Colors.white,//Color.fromRGBO(190, 202, 231, 100),
                      clipBehavior: Clip.antiAlias,
                      child: MaterialButton(
                        minWidth: 480,
                        height: 60,
                        child: Text(
                          "Log in to another account",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 21,
                              fontFamily: "SF Compact Display"),
                        ),
                        onPressed: () {
                          // naviagteTOLogin(context);
                        },
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(bottom: 0),
                    width: x / 2,
                    //color: Color.fromRGBO(190, 202, 231, 100),
                    alignment: Alignment.bottomCenter,
                    child: Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      color: Colors.white,//Color.fromRGBO(190, 202, 231, 100),
                      clipBehavior: Clip.antiAlias,
                      child: MaterialButton(
                        minWidth: 480,
                        height: 60,
                        child: Text(
                          "Create account",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 21,
                              fontFamily: "SF Compact Display"),
                        ),
                        onPressed: (

                            ) {
                          naviagteTORegister(context);
                          // naviagteTOLogin(context);
                        },
                      ),
                    ))
              ],
            )),
      ),
    );
  }
}

Future naviagteTORegister(context) async{
  Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));

}

/*Future naviagteTOLogin(context) async{
  Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
}*/
