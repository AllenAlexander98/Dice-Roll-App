import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        appBar: AppBar(
          title: Text('Dice Roll'),
          backgroundColor: Colors.deepOrangeAccent,
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
  int leftDiceRoll = 1;
  int rightDiceRoll = 1;
  int score = 0;

  void rollingDice() {
    leftDiceRoll = Random().nextInt(6) + 1;
    rightDiceRoll = Random().nextInt(6) + 1;
    score = leftDiceRoll + rightDiceRoll;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Text(
          '$score',
          style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      rollingDice();
                    });
                  },
                  child: Image.asset('images/dice$leftDiceRoll.png')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      rollingDice();
                    });
                  },
                  child: Image.asset('images/dice$rightDiceRoll.png')),
            ),
          ],
        ),
        SizedBox(
          height: 100,
        )
      ],
    );
  }
}
