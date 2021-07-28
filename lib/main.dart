import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var letfDicenumber = 1;
  var rightDicenumber = 2;

  rollDice() {
    setState(() {
      letfDicenumber = Random().nextInt(6) + 1;
      rightDicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
              padding: EdgeInsets.all(20),
              child: TextButton(
                onPressed: () => {rollDice()},
                child: Image.asset('images/dice$letfDicenumber.png'),
              )),
        ),
        Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: TextButton(
                onPressed: () => {rollDice()},
                child: Image.asset('images/dice$rightDicenumber.png'),
              ),
            ))
      ],
    ));
  }
}
