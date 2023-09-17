import 'package:food_delivery_app/data/repository/cart_repo.dart';
import 'package:food_delivery_app/models/cart_model.dart';
import 'package:food_delivery_app/models/products_model.dart';
import 'package:get/get.dart';

class CartContrller extends GetxController {
  final CartRepo cartRepo;
  CartContrller({required this.cartRepo});

  Map<int, CartModel> _item = {};

  void addItem(ProductModel product, int quantity) {
    print("length of the item id " + _item.length.toString());
    _item.putIfAbsent(product.id!, () {
      print("adding item to the cart id " +
          product.id!.toString() +
          " Quantity" +
          quantity.toString());
      _item.forEach((key, value) {
        print("Quntity is " + value.quantity.toString());
      });
      return CartModel(
          id: product.id,
          name: product.name,
          img: product.img,
          price: product.price,
          quantity: quantity,
          isExist: true,
          time: DateTime.now().toString());
    });
  }
}
