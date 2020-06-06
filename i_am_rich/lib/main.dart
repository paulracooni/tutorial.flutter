import 'package:flutter/material.dart';

// The main fuction is the starting point for all our Flutter apps.
void main() {
  String _app_bar_title = 'I Am Rich';
  String _asset_img = 'res/images/money.png';

  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(
              child:Text(_app_bar_title)
          ),
        ),
        body: Center(
          child:Image(
            image: AssetImage(_asset_img)
            ),
          ),
        ),
      ),
  );
}
