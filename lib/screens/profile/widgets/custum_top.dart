import 'package:flutter/material.dart';

class CustumTop extends StatelessWidget {
  final String title;
  const CustumTop({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.chevron_left_rounded,
              color: Color(0xff6f708b),
              size: 35,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xffacadc1),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const Icon(
            Icons.chevron_left_rounded,
            color: Colors.transparent,
            size: 35,
          ),
        ],
      ),
    );
  }
}
