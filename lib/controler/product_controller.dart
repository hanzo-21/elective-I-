import 'package:project/model/Product_model.dart';

class ProductController {
  List<Product> myProducts = [
    Product(
      ProductName: 'Product 1',
      Price: 100,
      Quantity: 1,
      ProductImage: 'https://picsum.photos/id/1/200/300',
      isFavourate: false,
      inCart: false,
    ),
    Product(
      ProductName: 'Product 2',
      Price: 200,
      Quantity: 3,
      ProductImage:
          'https://fastly.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68',
      isFavourate: false,
      inCart: false,
    ),
    Product(
      ProductName: 'Product 3',
      Price: 300,
      Quantity: 2,
      ProductImage:
          'https://fastly.picsum.photos/id/5/5000/3334.jpg?hmac=R_jZuyT1jbcfBlpKFxAb0Q3lof9oJ0kREaxsYV3MgCc',
      isFavourate: false,
      inCart: false,
    ),
    Product(
      ProductName: 'Product 4',
      Price: 400,
      Quantity: 4,
      ProductImage:
          'https://fastly.picsum.photos/id/6/5000/3333.jpg?hmac=pq9FRpg2xkAQ7J9JTrBtyFcp9-qvlu8ycAi7bUHlL7I',
      isFavourate: false,
      inCart: false,
    ),
  ];
  void toggleFavorit(int index) {
    myProducts[index].isFavourate = !myProducts[index].isFavourate;
  }

  void toggleCart(int index) {
    myProducts[index].inCart = !myProducts[index].inCart;
  }
}
