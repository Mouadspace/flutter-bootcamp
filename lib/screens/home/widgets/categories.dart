import 'package:flutter/material.dart';
import 'package:flutter_a/screens/home/widgets/categories_item.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> items = [
      {"iconPath": "assets/icons/svg/Flash Icon.svg", "title": "Flash Deal"},
      {"iconPath": "assets/icons/svg/Bill Icon.svg", "title": "Bill"},
      {"iconPath": "assets/icons/svg/Game Icon.svg", "title": "Game"},
      {"iconPath": "assets/icons/svg/Gift Icon.svg", "title": "Daily Gift"},
      {"iconPath": "assets/icons/svg/Discover.svg", "title": "More"},
    ];
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            items.length,
            (index) => CategoriesItem(
                  iconPath: items[index]['iconPath']!,
                  title: items[index]['title']!,
                )),
      ),
    );
  }
}
