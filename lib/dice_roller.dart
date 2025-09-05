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
  var upperDice = 'asset/images';
  void rolling() {
    upperDice = 'assets/images';
    print("changing image");
  }

  @override
  Widget build(context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/dice1.png', width: 80.0),

                  // testing to see how images are clicked
                  TextButton(
                    onPressed: rolling,
                    // refering to the function created
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(fontSize: 28.0),
                    ),
                    child: Text('Roll Dice'),
                  ),

                  TextButton(
                    onPressed: rolling,
                    child: Image.asset('images/dice3.png', width: 80.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
