import 'dart:math';

import 'package:first_app/text_widget.dart';
import 'package:flutter/material.dart';

Alignment startAlignement = Alignment.topLeft;
Alignment endAlignement = Alignment.bottomRight;

class GradienContainer extends StatefulWidget {
  final List<Color> colors;
  const GradienContainer({super.key, required this.colors});

  @override
  State<GradienContainer> createState() => _GradienContainerState();
}

class _GradienContainerState extends State<GradienContainer> {
  var index = 2;
  Random random = new Random();
  rollDice() {
    setState(() {
      index = random.nextInt(6) + 1;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.colors,
          begin: startAlignement,
          end: endAlignement,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/dice-${index}.png',
              width: 200,
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: rollDice,
              child: const TextWidget('Roll Dice'),
            )
          ],
        ),
      ),
    );
  }
}
