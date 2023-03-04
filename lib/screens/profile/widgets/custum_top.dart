import 'package:flutter/material.dart';

class CustumTop extends StatelessWidget {
  final String title;
  final String? subHeading;
  const CustumTop({Key? key, required this.title, this.subHeading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.grey.shade700,
          ),
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (subHeading != null)
                Text(
                  subHeading!,
                  style: const TextStyle(
                    color: Color(0xffacadc1),
                  ),
                ),
            ],
          ),
          const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
