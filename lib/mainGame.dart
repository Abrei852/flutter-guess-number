import 'package:flutter/material.dart';
import 'dart:math';

import 'result.dart';

class NumberGuessApp extends StatefulWidget {
  @override
  _NumberGuessAppState createState() => _NumberGuessAppState();
}

class _NumberGuessAppState extends State<NumberGuessApp> {
  Random random = new Random();
  var _rndNumber;
  final _correctNumber = 9;

  void _generateRndNumber() {
    setState(() {
      _rndNumber = random.nextInt(11);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Text(
                'Guess the right number',
                textAlign: TextAlign.center,
              )),
          body: _rndNumber != _correctNumber
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(_rndNumber.toString(),
                          style: TextStyle(fontSize: 30)),
                      ElevatedButton(
                          onPressed: _generateRndNumber,
                          child: Text('Generate Number')),
                    ],
                  ),
                )
              : Result(_correctNumber, context)),
    );
  }
}
