import 'package:flutter/material.dart';
import 'cupertino_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
//      home: CupertinoPage(),
      home: HelloPage("Hello Paul"),
    );
  }
}

class HelloPage extends StatefulWidget {
  final String title;

  HelloPage(this.title);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String _message = "Hello world";
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _changeMessage,
        ),
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_message, style: TextStyle(fontSize: 30)),
                Text('$_counter'.toString(), style: TextStyle(fontSize: 30)),
                RaisedButton(
                    child: Text('화면 이동'),
                    onPressed:() {
                      Navigator.push(context,
                          MaterialPageRoute( 
                            builder: (context) => CupertinoPage()
                      ));
                    })
              ],
            )
        )
    );
  }

  void _changeMessage() {
    setState(() {
      _message = '헬로 월드';
      _counter += 1;
    });
  }
  }
