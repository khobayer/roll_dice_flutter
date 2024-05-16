import 'dart:math';
import 'package:flutter/material.dart';

final randomNum = Random();

class RolledDice extends StatefulWidget {
  const RolledDice({super.key});

  @override
  State<RolledDice> createState() {
    return _RolledDiceState();
  }
}

class _RolledDiceState extends State<RolledDice> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomNum.nextInt(6) + 1;
    });
  }

  @override
  Widget build(contex) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
