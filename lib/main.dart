import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 192, 70, 169),
            Color.fromARGB(255, 94, 42, 199),
            Color.fromARGB(255, 96, 119, 235),
            Color.fromARGB(255, 96, 186, 235),
            Color.fromARGB(255, 129, 82, 199),
          ],
        ),
      ),
    ),
  );
}
