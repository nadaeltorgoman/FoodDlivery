import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/repository/cart_repo.dart';
import 'package:food_delivery_app/models/cart_model.dart';
import 'package:food_delivery_app/models/products_model.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:get/get.dart';

class CartContrller extends GetxController {
  final CartRepo cartRepo;
  CartContrller({required this.cartRepo});

  Map<int, CartModel> _item = {};

  Map<int, CartModel> get item => _item;

  void addItem(ProductModel product, int quantity) {
    var totalQuantity = 0;
    if (_item.containsKey(product.id!)) {
      _item.update(product.id!, (value) {
        totalQuantity = value.quantity! + quantity;

        return CartModel(
            id: product.id,
            name: product.name,
            img: product.img,
            price: product.price,
            quantity: value.quantity! + quantity,
            isExist: true,
            time: DateTime.now().toString(),
            product: product);
      });

      if (totalQuantity <= 0) {
        _item.remove(product.id);
      }
    } else {
      if (quantity > 0) {
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
              time: DateTime.now().toString(),
              product: product);
        });
      } else {
        Get.snackbar(
            "Item Count", "You Should at least add an item in the cart !",
            backgroundColor: AppColors.mainColor, colorText: Colors.white);
      }
    }
    update();
  }

  bool existInCart(ProductModel product) {
    if (_item.containsKey(product.id)) {
      return true;
    }
    return false;
  }

  var quantity = 0;
  int getQuantity(ProductModel product) {
    if (_item.containsValue(product.id)) {
      _item.forEach((key, value) {
        if (key == product.id) {
          quantity = value.quantity!;
        }
      });
    }
    return quantity;
  }

  int get totalItem {
    var totalQuantity = 0;

    _item.forEach((key, value) {
      totalQuantity += value.quantity!;
    });
    return totalQuantity;
  }

  List<CartModel> get getItem {
    return _item.entries.map((e) {
      return e.value;
    }).toList();
  }
}
