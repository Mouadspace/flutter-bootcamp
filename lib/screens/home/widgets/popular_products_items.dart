import 'package:flutter/material.dart';
import 'package:flutter_a/models/popular_products_models.dart';
import 'package:flutter_a/screens/home/widgets/favourite.dart';

class PopularProductsItems extends StatelessWidget {
  final Popular popular;
  const PopularProductsItems({Key? key, required this.popular})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      // color: Colors.lightBlue.withOpacity(.4),
      child: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: const Color(0xfff0f0f5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              popular.imagePath,
              // cacheWidth: 100, // the images looks so pixlated
              // fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(
            width: 150,
            child: Text(
              popular.title,
              style: const TextStyle(
                fontSize: 12.5,
                color: Color(0xffacadc1),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${popular.price}",
                  style: const TextStyle(
                    fontSize: 17,
                    color: Color(0xffea7445),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const FavouriteButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
