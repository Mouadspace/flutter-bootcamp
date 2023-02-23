import 'package:flutter/material.dart';

class CashBack extends StatelessWidget {
  const CashBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = double.maxFinite;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      padding: const EdgeInsets.only(left: 20),
      width: width,
      height: 110,
      decoration: BoxDecoration(
        color: const Color(0xff4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "A Summer Surprise",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "Cashback 20%",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ]),
    );
  }
}
