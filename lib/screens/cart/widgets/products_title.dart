import 'package:flutter/material.dart';

class ProductsTitle extends StatelessWidget {
  const ProductsTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
