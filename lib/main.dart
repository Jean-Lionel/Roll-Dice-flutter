import './gradian_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradienContainer(
          colors: [
            Color.fromARGB(255, 100, 50, 187),
            Color.fromARGB(255, 40, 2, 104),
          ],
        ),
      ),
    ),
  );
}
