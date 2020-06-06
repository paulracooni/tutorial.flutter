import 'package:flutter/material.dart';

void main() {
  runApp(MiCardAppAssignment());
}

class MiCardAppAssignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 100,
                color: Colors.redAccent,
              ),
              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 100.0, height: 100.0,
                        color: Colors.yellowAccent,
                      ),
                      Container(
                        width: 100.0, height: 100.0,
                        color: Colors.yellowAccent.withOpacity(0.5),
                      ),
                    ],
                ),
              ),
              Container(
                width: 100,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MiCardAppCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        body: SafeArea(
          child: Column(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height:100.0,
                width: 100.0,
//                margin:EdgeInsets.only(left:10.0),
                padding: EdgeInsets.all(10.0),
                color: Colors.redAccent,
                child: Center(child: Text('Container1')),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                height:100.0,
                width: 300.0,
//                margin:EdgeInsets.only(left:10.0),
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey,
                child: Center(child: Text('Container2')),
              ),
              Container(
                height:100.0,
                width: 100.0,
//                margin:EdgeInsets.only(left:10.0),
                padding: EdgeInsets.all(10.0),
                color: Colors.greenAccent,
                child: Center(child: Text('Container3')),
              ),
              Container(
                width: double.infinity,
                height: 0.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

