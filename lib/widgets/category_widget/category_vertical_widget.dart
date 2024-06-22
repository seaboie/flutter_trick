import 'package:flutter/material.dart';
import 'package:flutter_trick/widgets/text/text_body.dart';

class CategoryVerticalWidget extends StatelessWidget {
  final List<dynamic> datas;
  final Widget Function(dynamic data) child;
  final String title;

  const CategoryVerticalWidget({
    super.key,
    required this.title,
    required this.datas,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextBody(
            title: title,
          ),
        ),
        const SizedBox(height: 15),
        ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemCount: datas.length,
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 25),
          itemBuilder: (BuildContext context, int index) {
            dynamic data = datas[index];
            return child(data);
          },
        ),
      ],
    );
  }
}
