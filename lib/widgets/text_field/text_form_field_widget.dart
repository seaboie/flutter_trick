import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_trick/iconAddress/icon_address.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final bool hasSuffixIcon;

  const TextFormFieldWidget({
    super.key,
    required this.hintText,
    required this.hasSuffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 40,
            color: const Color(0xff1d1617).withOpacity(0.1),
          )
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xffdddada),
            fontSize: 20,
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.all(10), // ***
          prefixIcon: SizedBox(
            width: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    IconAddress.searchButton, // image address
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
          suffixIcon: hasSuffixIcon
              ? SizedBox(
                  width: 50,
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        const VerticalDivider(
                          width: 1,
                          color: Color(0xffdddada),
                          indent: 5,
                          endIndent: 5,
                          thickness: 1,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            IconAddress.filterButton, // image address
                            height: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ),
      ),
    );
  }
}
