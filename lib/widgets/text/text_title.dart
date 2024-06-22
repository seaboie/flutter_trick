import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String title;

  const TextTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.black.withOpacity(0.7),
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
