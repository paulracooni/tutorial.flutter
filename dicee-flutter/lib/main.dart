import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(DiceApp());
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  final _random = new Random();
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset("images/dice$leftDiceNumber.png"),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset("images/dice$rightDiceNumber.png"),
              ),
            ),
          ],
        ),
        onPressed: () {
          rollTheDice();
        },
      ),
    );
  }

  void rollTheDice(){
    setState(() {
      leftDiceNumber = getRandomDiceNum();
      rightDiceNumber = getRandomDiceNum();
    });
  }
  int getRandomDiceNum(){
    return 1 + _random.nextInt(6 - 1);
  }
}

