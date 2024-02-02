import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';
// import 'package:flutter_application_1/text.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;


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
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
