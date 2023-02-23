import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesItem extends StatelessWidget {
  final String iconPath, title;
  const CategoriesItem({Key? key, required this.iconPath, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // padding: const EdgeInsets.all(15),
          width: 58,
          height: 58,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffffecdf),
          ),
          child: SvgPicture.asset(
            iconPath,
            height: 5, // this is better than adding padding
            width: 5,
            fit: BoxFit.scaleDown,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          width: 58,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Color(0xffacadc1)),
          ),
        ),
      ],
    );
  }
}
