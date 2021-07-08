import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(NumberGuessApp());
}

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
    if (_rndNumber == _correctNumber) {
      print('Correct Number!');
    } else {
      print(_rndNumber);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Guess the right number')),
      body: Center(
        child: Column(
          children: [
            Text(_rndNumber.toString(), style: TextStyle(fontSize: 30)),
            ElevatedButton(
                onPressed: _generateRndNumber, child: Text('Generate Number')),
            Text(_correctNumber.toString())
          ],
        ),
      ),
    ));
  }
}
