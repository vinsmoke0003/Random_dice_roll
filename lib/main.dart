import 'package:flutter/material.dart';
import 'package:coding_app/gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer( Color.fromARGB(255, 47, 158, 33),
             Color.fromARGB(255, 58, 26, 144),),
      ),
    ),
  );
}
