import 'package:flutter/material.dart';
import 'package:flutter_a/controller/home_controller.dart';
import 'package:flutter_a/models/popular_products_models.dart';
import 'package:flutter_a/models/product_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../controller/product_controller.dart';

class PopularProductsItems extends StatelessWidget {
  final Popular popular;
  const PopularProductsItems({Key? key, required this.popular})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Home fcontroller = Get.find<Home>();
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
                // const FavouriteButton(),
                GestureDetector(
                  onTap: () {
                    fcontroller.isLiked(popular);
                    fcontroller.update();
                  },
                  child: Container(
                    width: 31,
                    height: 31,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: fcontroller.isFavourite
                          ? Colors.redAccent.withOpacity(.3)
                          : const Color(0xfff0f0f5),
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/svg/Heart Icon_2.svg",
                      color: fcontroller.isFavourite ? Colors.redAccent : null,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
