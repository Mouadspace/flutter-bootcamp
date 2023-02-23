import 'package:flutter/material.dart';
import 'package:flutter_a/models/popular_products_models.dart';
import 'package:flutter_a/screens/home/widgets/section_title.dart';

import 'popular_products_items.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(title: "Popular Products"),
        SizedBox(
          width: double.maxFinite,
          height: 240,
          child: ListView.builder(
              padding: const EdgeInsets.only(left: 20),
              physics: const BouncingScrollPhysics(),
              itemCount: popularList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return PopularProductsItems(
                  popular: popularList[index],
                );
              }),
        )
      ],
    );
  }
}
