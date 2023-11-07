import 'package:flutter/material.dart';
import 'package:rolle_cide_firstproject/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          colors: [Colors.black, Colors.lightBlueAccent, Colors.white],
        ),
      ),
    ),
  );
}
