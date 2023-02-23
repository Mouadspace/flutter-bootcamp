import 'package:flutter/material.dart';
import 'package:flutter_a/models/special_offers_models.dart';

class SpecialOffersItems extends StatelessWidget {
  final Offers offers;

  const SpecialOffersItems({
    Key? key,
    required this.offers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // margin: const EdgeInsets.symmetric(vertical: 20),
          // padding: const EdgeInsets.only(bottom: 20),
          margin: const EdgeInsets.only(right: 20),
          width: 300,
          height: 130,
          decoration: BoxDecoration(
            color: Colors.lightBlue.withOpacity(.4),
            borderRadius: BorderRadius.circular(25),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              offers.imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: 300,
          height: 130,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(0.05)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Positioned(
          top: 17,
          left: 20,
          child: Text.rich(
            TextSpan(
              style: const TextStyle(
                color: Colors.white,
              ),
              children: [
                TextSpan(
                  text: "${offers.title}\n",
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: "${offers.brand} Brands",
                  style: const TextStyle(
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
