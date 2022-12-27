import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItem = [
    // [ itemName, itemPrice, imagePath, color ]
    ["Avocado", "320.00", "lib/images/avocado.png", Colors.green],
    ["Banana", "5.50", "lib/images/banana.png", Colors.yellow],
    ["Mango", "12.80", "lib/images/mango.png", Colors.brown],
    ["Water", "20.00", "lib/images/water.png", Colors.blue],
  ];

  // list of cart items
  List _cartItems = [];

  get shopItem => _shopItem;

  get cartItems => _cartItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItem[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate totalprice
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
