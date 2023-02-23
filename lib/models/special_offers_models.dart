class Offers {
  final String imagePath, title;
  final int brand;

  Offers({required this.imagePath, required this.title, required this.brand});
}

List<Offers> offersList = [
  Offers(
    imagePath: "assets/images/Image Banner 2.png",
    title: "Smartphone",
    brand: 18,
  ),
  Offers(
    imagePath: "assets/images/Image Banner 3.png",
    title: "Fashion",
    brand: 24,
  )
];
