import 'dart:math';

import 'package:flutter/material.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  var currentValue = 1;

  void diceRoller() {
    setState(() {
      currentValue = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/img/dice-$currentValue.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: diceRoller,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.yellowAccent,
            ),
            child: const Text('Roll Dice'),
          ),
        ],
      ),
    );
  }
}
