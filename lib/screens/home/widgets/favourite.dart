import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({Key? key}) : super(key: key);

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

// variable global best place ?
bool isLiked = false;

class _FavouriteButtonState extends State<FavouriteButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
      child: Container(
        width: 31,
        height: 31,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: isLiked
              ? Colors.redAccent.withOpacity(.3)
              : const Color(0xfff0f0f5),
        ),
        child: SvgPicture.asset(
          "assets/icons/svg/Heart Icon_2.svg",
          color: isLiked ? Colors.redAccent : null,
        ),
      ),
    );
  }
}
