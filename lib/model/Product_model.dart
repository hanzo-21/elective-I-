class Product {
  String? ProductImage;
  String? ProductName;
  double? Price;
  int? Quantity;
  bool isFavourate;
  bool inCart;

  Product(
      {this.Price,
      this.ProductImage,
      this.ProductName,
      this.Quantity,
      this.inCart = false,
      this.isFavourate = false});
}
