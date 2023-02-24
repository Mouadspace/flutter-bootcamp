import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoxItem extends StatelessWidget {
  final String iconPath, title;
  const BoxItem({Key? key, required this.iconPath, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xfff0f0f5),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            SvgPicture.asset(
              iconPath,
              color: const Color(0xffea7445),
            ),
            const SizedBox(
              width: 25,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.grey,
        ),
      ]),
    );
  }
}
