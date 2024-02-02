import 'package:flutter/material.dart';
// import 'package:flutter_application_1/text.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

void rollDice() {
  // print('Dice rolled');
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  final List<Color> colors;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            'assets/images/one.png',
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
        ]),
      ),
    );
  }
}
