import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustumIcon extends StatelessWidget {
  final String iconPath;
  const CustumIcon({Key? key, required this.iconPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      // customBorder: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(100),
      // ),
      child: Container(
          padding: const EdgeInsets.all(14.5),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xfff0f0f5),
          ),
          child: SvgPicture.asset(iconPath)),
    );
  }
}
