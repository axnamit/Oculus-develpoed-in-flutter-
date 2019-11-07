import 'package:flutter/material.dart';
import 'package:oculus/second_activity/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SpashScreen();
  }
}

class _SpashScreen extends State<SplashScreen> {
  bool loading = true;

  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(84, 97, 200, 100),
      body: Center(
          child: loading
              ? Text("O",style: TextStyle(color: Colors.white,
              fontSize: 80,
              fontFamily: "Baron Neue"),)
              :  Home()),
    );
  }
}
