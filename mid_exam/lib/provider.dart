import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  List<Map<String, dynamic>> _items = [];

  List<Map<String, dynamic>> get items => _items;

  double get totalPrice {
    double total = 0.0;
    for (var item in _items) {
      total += item['price'];
    }
    return total;
  }

  int get cartItemCount => _items.length;

  void addToCart(Map<String, dynamic> product) {
    _items.add(product);
    notifyListeners();
  }

  void removeFromCart(Map<String, dynamic> product) {
    _items.remove(product);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
