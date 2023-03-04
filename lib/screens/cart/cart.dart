import 'package:flutter/material.dart';
import 'package:flutter_a/screens/profile/widgets/custum_top.dart';

import '../../models/store_products.dart';
import 'widgets/check_out.dart';
import 'widgets/product_section.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const CustumTop(
                  title: "Your Cart",
                  subHeading: "4 items",
                ),
                const SizedBox(height: 20),
                ProductSection(
                  title: "Wano Store",
                  products: wanoProducts,
                ),
                const SizedBox(height: 20),
                ProductSection(
                  title: "Sportz Store",
                  products: sportzProducts,
                ),
              ],
            ),
          ),
          const CheckOut(),
        ]),
      ),
    );
  }
}
