import 'package:flutter/material.dart';
import 'package:flutter_a/screens/home/widgets/custum_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustumAppBar extends StatelessWidget {
  const CustumAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.maxFinite,
      // decoration: BoxDecoration(color: Colors.lightBlueAccent.withOpacity(.5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xfff0f0f5),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search product",
                    // hintStyle: TextStyle(color: Color(0xffd6d6e1)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const CustumIcon(iconPath: "assets/icons/svg/Cart Icon.svg"),
            const SizedBox(
              width: 10,
            ),
            const CustumIcon(iconPath: "assets/icons/svg/Bell.svg"),
          ],
        ),
      ),
    );
  }
}
