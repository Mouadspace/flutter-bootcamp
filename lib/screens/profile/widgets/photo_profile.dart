import 'package:flutter/material.dart';
import 'package:flutter_a/screens/home/widgets/custum_icon.dart';

class PhotoProfile extends StatelessWidget {
  const PhotoProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 40),
      child: Stack(
        children: [
          Image.asset(
            "assets/images/Profile Image.png",
            scale: 2.5,
          ),
          const Positioned(
              bottom: 0,
              right: 0,
              child: CustumIcon(iconPath: "assets/icons/svg/Camera Icon.svg"))
        ],
      ),
    );
  }
}
