import 'package:flutter_a/models/popular_products_models.dart';
import 'package:get/get.dart';

class Home extends GetxController {
  bool isFavourite = false;

  void isLiked(Popular home) {
    home.isFavourite = !home.isFavourite;
    update();
  }
}
