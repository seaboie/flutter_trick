import 'package:flutter/material.dart';

class TextBody extends StatelessWidget {
  final String title;

  const TextBody({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.black.withOpacity(0.7),
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
