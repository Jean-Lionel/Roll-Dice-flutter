import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String title;
  const TextWidget(
    this.title, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? 'Hello World Ngozi',
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}
