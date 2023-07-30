import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Roll Dice App',
          ),
        ),
        body: const GradientContainer(
          color1: Colors.blue,
          color2: Colors.deepPurple,
        ),
      ),
    ),
  );
}
