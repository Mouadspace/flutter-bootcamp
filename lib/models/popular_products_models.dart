class Popular {
  final String imagePath, title;
  final double price;
  bool isFavourite;

  Popular(
      {required this.isFavourite,
      required this.imagePath,
      required this.title,
      required this.price});
}

List<Popular> popularList = [
  Popular(
    imagePath: "assets/images/ps4_console_white_1.png",
    title: "Wireless Controller for PS4 tm",
    price: 64.99,
    isFavourite: true,
  ),
  Popular(
    imagePath: "assets/images/Image Popular Product 2.png",
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    isFavourite: true,
  ),
  Popular(
    imagePath: "assets/images/glap.png",
    title: "Outdoor Sports Bike Black Gloves",
    price: 15.49,
    isFavourite: true,
  ),
  Popular(
    imagePath: "assets/images/wireless headset.png",
    title: "Wireless Bluetooth Headset Bass Boost",
    isFavourite: true,
    price: 43.99,
  )
];
