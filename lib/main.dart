import 'package:flutter/material.dart';

import 'mainGame.dart';

void main() {
  runApp(MaterialApp(
    home: StartGame(),
  ));
}

class StartGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true, title: Text('Guess the right number')),
            body: Center(
              child: ElevatedButton(
                  child: Text('Play game'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NumberGuessApp()),
                    );
                  }),
            )));
  }
}
