import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/repository/cart_repo.dart';
import 'package:food_delivery_app/models/cart_model.dart';
import 'package:food_delivery_app/models/products_model.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;
  CartController({required this.cartRepo});

  Map<int, CartModel> _item = {};

  Map<int, CartModel> get item => _item;

  List<CartModel> storageItem = [];

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
            product: product,
          );
        });
      } else {
        Get.snackbar(
            "Item Count", "You Should at least add an item in the cart !",
            backgroundColor: AppColors.mainColor, colorText: Colors.white);
      }
    }
    cartRepo.addToCartList(getItem);
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

  int get totalAmount {
    var total = 0;
    _item.forEach((key, value) {
      total += value.quantity! * value.price!;
    });

    return total;
  }

  List<CartModel> get getItem {
    return _item.entries.map((e) {
      return e.value;
    }).toList();
  }

  List<CartModel> getCartData() {
    setCart = cartRepo.getCartList();
    return storageItem;
  }

  set setCart(List<CartModel> items) {
    storageItem = items;
    for (int i = 0; i < storageItem.length; i++) {
      _item.putIfAbsent(storageItem[i].product!.id!, () => storageItem[i]);
    }
  }

  void addToHistory() {
    cartRepo.addToCartHistoryList();
    clear();
  }

  void clear() {
    _item = {};
    update();
  }

  List<CartModel> getCartHistoryList() {
    return cartRepo.getCartHistoryList();
  }

  set setItems(Map<int, CartModel> setItems) {
    _item = {};
    _item = setItems;
  }

  void addToCartList() {
    cartRepo.addToCartList(getItem);
    update();
  }
}
