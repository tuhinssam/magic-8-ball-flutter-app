import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Just ask me anything'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: MagicBallsPage(),
      ),
    ),
  );
}

class MagicBallsPage extends StatefulWidget {
  @override
  _MagicBallsState createState() => _MagicBallsState();
}

class _MagicBallsState extends State<MagicBallsPage> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                changeBall();
                print("Ball Selected is: $ballNum");
              },
              child: Image.asset('images/ball$ballNum.png'),
            ),
          )),
        ],
      ),
    );
  }

  void changeBall() {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }
}
