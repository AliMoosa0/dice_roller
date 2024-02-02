import 'package:flutter/material.dart';
import 'dart:math';

class  DiceRoller extends StatefulWidget{
     const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
return _DiceRollerState();
  }
}

class _DiceRollerState extends  State<DiceRoller>{
  var activeDice = 'assets/images/one.png';
void rollDice() {
  var diceRoll = Random().nextInt(6) + 1;
switch (diceRoll) {
  case 1:
    setState(() {
      activeDice = 'assets/images/one.png';
    });
    break;
  case 2:
    setState(() {
      activeDice = 'assets/images/two.png';
    });
    break;

  case 3:
    setState(() {
      activeDice = 'assets/images/three.png';
    });
    break;
  case 4:
    setState(() {
      activeDice = 'assets/images/four.png';
    });
    break;
  case 5:
    setState(() {
      activeDice = 'assets/images/five.png';
    });
    break;
  case 6:
    setState(() {
      activeDice = 'assets/images/six.png';
    });
    break;
}}
  @override
  Widget build(context){
    return Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            activeDice,
            width: 200,
          ),
          const SizedBox(height: 20),
          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 30),
                foregroundColor: Colors.white70,
                textStyle: const TextStyle(fontSize: 30),
              ),
              child: const Text('Roll Dice')),
        ]);
  }
}