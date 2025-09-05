import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(title: Text('Dicee'), backgroundColor: Colors.blue),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int upperDice = 3;
  int lowerDice = 5;

  void text() {
    setState(() {
      upperDice = Random().nextInt(6) + 1;
    });
  }

  void image() {
    setState(() {
      lowerDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // first dice + roll button
          Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              Image.asset("images/dice$upperDice.png", width: 150.0),
              // First dice
              // testing to see how images are clicked
              const SizedBox(height: 10),
              TextButton(
                onPressed: text,
                // refering to the function created
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 28.0),
                ),
                child: Text(
                  'Roll Dice',
                  style: TextStyle(color: Colors.white, height: 1.0),
                ),
              ),
            ],
          ),

          // Second Dice
          //from images directly clicked
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: image,
                  child: Image.asset("images/dice$lowerDice.png", width: 150.0),
                ),
                const SizedBox(height: 10),
                Text(
                  'Click dice',
                  style: TextStyle(color: Colors.white, fontSize: 28.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
