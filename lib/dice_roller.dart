import 'package:flutter/material.dart';
import 'dart:math';

//recreated globaly
final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  //img store
  var currentDiceroll = 2;

  void rollCube() {
    setState(() {
      currentDiceroll = random.nextInt(6) + 1; //get 6;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, //center image
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceroll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollCube,
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 25),
            padding: const EdgeInsets.all(15),
            shadowColor: Colors.black,
          ),
          child: const Text("Shake it"),
        )
      ],
    );
  }
}
