import 'package:flutter/material.dart';

void main() {
  runApp(MiCardApp());
}

class MiCardApp extends StatelessWidget {

  String _profile_img = "images/profile_paul.jpg";
  String _name = "Paul Kim";
  String _job_desc = "Machine Learning Engineer";
  String _font_pacifico= 'Pacifico';
  String _font_sans= 'SourceSansPro';
  String _phone_number = '010-2819-1202';
  String _email = "paul.kim@honeynaps.com";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage(_profile_img),
              ),
              Text(
                _name,
                style: TextStyle(
                  fontFamily: _font_pacifico,
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                _job_desc,
                style: TextStyle(
                  fontFamily: _font_sans,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  color: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(
                height: 20,
                width: 170,
                child: Divider(
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                      Icons.phone,
                      color: Colors.teal
                  ),
                  title: Text(
                      _phone_number,
                      style: TextStyle(
                          fontFamily: _font_sans,
                          color: Colors.black.withOpacity(0.8),
                          fontSize: 20.0
                      )
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                      Icons.email,
                      color: Colors.teal
                  ),
                  title: Text(
                      _email,
                      style: TextStyle(
                          fontFamily: _font_sans,
                          color: Colors.black.withOpacity(0.8),
                          fontSize: 20.0
                      )
                  ),
                ),
              ),
              Container(
                width: double.infinity,
              ),
            ],
          )
        )
      ),
    );
  }
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

