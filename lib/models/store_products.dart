class StoreProduct {
  String iconPath, productName;
  double price;
  StoreProduct({
    required this.iconPath,
    required this.price,
    required this.productName,
  });
}

List<StoreProduct> wanoProducts = [
  StoreProduct(
    iconPath: "assets/images/ps4_console_white_1.png",
    price: 64.99,
    productName: "Wireless Controller for PS4 tm",
  ),
  StoreProduct(
    iconPath: "assets/images/wireless headset.png",
    price: 90.00,
    productName: "Logitech Zone Wireless Headset",
  ),
];

List<StoreProduct> sportzProducts = [
  StoreProduct(
    iconPath: "assets/images/shoes2.png",
    price: 131.18,
    productName: "Nike Joyride Run flyknit -Men's Running",
  ),
  StoreProduct(
    iconPath: "assets/images/wireless headset.png",
    price: 90.00,
    productName: "Logitech Zone Wireless Headset",
  ),
];
