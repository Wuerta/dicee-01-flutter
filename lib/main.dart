import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const Dicee());

class Dicee extends StatelessWidget {
  const Dicee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          elevation: 0,
          title: const Text('Dicee'),
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Dice()],
        ),
      ),
    );
  }
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int diceNumber = Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: () {
          setState(() {
            diceNumber = Random().nextInt(6) + 1;
          });
        },
        child: Image.asset(
          'assets/dice_0$diceNumber.png',
          width: 174,
          height: 174,
          color: Colors.white,
        ),
      ),
    );
  }
}
