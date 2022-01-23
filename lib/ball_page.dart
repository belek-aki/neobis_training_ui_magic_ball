import 'package:flutter/material.dart';
import 'dart:math';

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.blue,
          child: Center(
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () => {
                setState(() => {
                      ballNumber = Random().nextInt(5) + 1,
                    }),
                print(ballNumber),
              },
              child: Image.asset("assets/images/ball$ballNumber.png"),
            ),
          ),
        ),
      ),
    );
  }
}
