import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('DiceApp1'),
        backgroundColor: Colors.yellow,
      ),
      body: const DiceApp(),
    ),
  ));
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  //const DiceApp({Key? key}) : super(key: key);
  int left = 1;
  int right = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  left = Random().nextInt(6) + 1;
                });

              },
              child: Image.asset('images/dice$left.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  right = Random().nextInt(6) + 1;
                });

              },
              child: Image.asset('images/dice$right.png'),
            ),
          )
        ],
      ),
    );
  }
}




