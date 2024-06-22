import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardSmallImageOneTitleWidget extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final String imagePath;

  const CardSmallImageOneTitleWidget(
      {super.key,
      required this.backgroundColor,
      required this.imagePath,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(imagePath),
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
