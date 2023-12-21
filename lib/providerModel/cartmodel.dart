import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items
  final List _shopItems = [
    ['Apple', '40.00', 'lib/images/apple.jpg', Colors.red],
    ['Orange', '60.00', 'lib/images/chicken.jpg', Colors.orange],
    ['Chicken', '140.00', 'lib/images/pineapple.jpg', Colors.blueGrey],
    ['Water', '30.00', 'lib/images/water.jpg', Colors.lightBlue],
  ];

  // creating a cart

  final List _cartItems = [];
  get shopItems => _shopItems;
  get cartItems => _cartItems;

  // adding item to the cart
  void addItemToCart(int index) {
    _cartItems.add(
      _shopItems[index],
    );
    notifyListeners();
  }
  //removing item from the cart

  void removeItemsFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculating item form the cart
  String calculate() {
    double total = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      total += double.parse(_cartItems[i][1]);
    }

    return total.toStringAsFixed(2);
  }
}
