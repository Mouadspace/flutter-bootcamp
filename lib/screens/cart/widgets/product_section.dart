import 'package:flutter/material.dart';

import '../../../models/store_products.dart';

import 'products_title.dart';

class ProductSection extends StatelessWidget {
  final String title;
  final List<StoreProduct> products;
  const ProductSection({Key? key, required this.title, required this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductsTitle(title: title),
          const SizedBox(height: 20),
          SizedBox(
            height: 300,
            child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(right: 15, bottom: 20),
                        width: 110,
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade100,
                        ),
                        child: Image.asset(products[index].iconPath),
                      ),
                      SizedBox(
                        height: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 170,
                              child: Text(
                                products[index].productName,
                                style: const TextStyle(
                                  height: 1.4,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                style: const TextStyle(
                                  height: 3,
                                ),
                                children: [
                                  TextSpan(
                                    text: "\$${products[index].price}",
                                    style: const TextStyle(
                                      color: Color(0xffea7445),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "   x1",
                                    style: TextStyle(
                                      color: Colors.grey.shade400,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
