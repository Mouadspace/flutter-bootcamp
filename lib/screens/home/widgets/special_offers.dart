import 'package:flutter/material.dart';
import 'package:flutter_a/models/special_offers_models.dart';

import 'section_title.dart';
import 'special_offers_items.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(
          title: "Special for you",
        ),
        SizedBox(
          width: double.maxFinite,
          height: 130,
          child: ListView.builder(
            itemCount: offersList.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (context, index) {
              return SpecialOffersItems(
                offers: offersList[index],
              );
            },
          ),
        )
      ],
    );
  }
}
