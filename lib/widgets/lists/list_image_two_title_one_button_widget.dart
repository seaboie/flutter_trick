import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListImageTwoTitleOneButtonWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final String level;
  final String duration;
  final String calorie;
  const ListImageTwoTitleOneButtonWidget({
    super.key,
    required this.iconPath,
    required this.title,
    required this.level,
    required this.duration,
    required this.calorie,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              spreadRadius: 0,
              blurRadius: 40,
              offset: const Offset(0, 10),
              color: const Color(0xff1d1617).withOpacity(0.07))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 65,
            height: 65,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '$level | $duration | $calorie',
                style: const TextStyle(
                  color: Color(0xff7b6f72),
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              'assets/icons/button.svg',
              width: 30,
            ),
          ),
        ],
      ),
    );
  }
}
