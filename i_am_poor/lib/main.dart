import 'package:flutter/material.dart';

void main() {
  runApp(ImPoorApp());
}

class ImPoorApp extends StatelessWidget {

  String __app_bar_title = 'I am poor';
  String __img_street = 'res/images/street.jpg';
  String __img_bagger = 'res/images/begger.png';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.blueGrey,

        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(
              child:Text(__app_bar_title)
          ),
        ),

        body:Stack(
            children: <Widget>[
              Center(child: Image(image: AssetImage(__img_street))),
              Center(child: Image(image: AssetImage(__img_bagger))),
            ]
          ),

        ),
      );
  }
}
