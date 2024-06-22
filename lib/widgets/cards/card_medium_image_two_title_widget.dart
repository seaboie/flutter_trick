import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardMediumImageTwoTitleWidget extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final String imagePath;
  final String level;
  final String duration;
  final String caloriel;

  const CardMediumImageTwoTitleWidget({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.imagePath,
    required this.level,
    required this.duration,
    required this.caloriel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(imagePath),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '$level | $duration | $caloriel',
            style: const TextStyle(
              color: Color(0xff7B6F72),
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 45,
            width: 130,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xff9dceff), Color(0xff92a3fd)]),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Text(
              'View',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
