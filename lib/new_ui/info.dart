import 'package:flutter/material.dart';
import 'package:oculus/new_ui/custumModule.dart';
import 'package:oculus/second_activity/home.dart';
import 'package:oculus/utils/stringcustum.dart';
var pageCount = 0;

class Info extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Info();
  }
}

class _Info extends State<Info> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    

    return Scaffold(
      body: Container(
        child: PageView(
          //print("Current Page: " + pageCount.toString()),
          children: <Widget>[
            
            CustumModule(context,pageCount),
            CustumModule(context,pageCount),
            CustumModule(context,pageCount),
            
          ],
          onPageChanged:_onPageViewChange,
        )
      ),
    );
    
  }
}
_onPageViewChange(int page) {   
    
    pageCount=page;

    
  }