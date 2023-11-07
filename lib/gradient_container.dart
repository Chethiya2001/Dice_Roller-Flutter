import 'package:flutter/material.dart';
import 'package:rolle_cide_firstproject/dice_roller.dart';
// ignore: unused_import
import 'package:rolle_cide_firstproject/style_text.dart';

const aligmentstart = Alignment.topLeft;
const aligmentend = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: aligmentstart,
          end: aligmentend,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
