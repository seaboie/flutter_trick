import 'package:flutter/material.dart';
import 'package:flutter_trick/widgets/text/text_body.dart';

class CategoryHorizontalWidget extends StatelessWidget {
  final String title;
  final double itemHeight;
  final List<dynamic> datas;
  final Widget Function(dynamic data) child;
  const CategoryHorizontalWidget({
    super.key,
    required this.title,
    required this.itemHeight,
    required this.datas,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: TextBody(
            title: title,
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: itemHeight,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: datas.length,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 25),
            itemBuilder: (BuildContext context, int index) {
              dynamic data = datas[index];
              return child(data);
            },
          ),
        ),
      ],
    );
  }
}
