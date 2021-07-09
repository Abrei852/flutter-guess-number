import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int correctNumber;
  final context1;

  Result(this.correctNumber, this.context1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('You did it!'),
        ),
        body: ListView(
          children: [
            Text('The correct number was $correctNumber'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context1);
                },
                child: Text('Play again!'))
          ],
        ),
      ),
    );
  }
}
