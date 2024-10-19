import 'package:flutter/foundation.dart';

class CartProvider extends ChangeNotifier {
  List<Map<String, dynamic>> _cart = [];
  double _totalPrice = 0.0;

  List<Map<String, dynamic>> get cart => _cart;
  int get cartItemCount => _cart.length;
  double get totalPrice => _totalPrice;

  void addToCart(Map<String, dynamic> product) {
    _cart.add(product);
    _totalPrice += product['price'];
    notifyListeners();
  }

  void removeFromCart(Map<String, dynamic> product) {
    _cart.remove(product);
    _totalPrice -= product['price'];
    notifyListeners();
  }

  void clearCart() {
    _cart.clear();
    _totalPrice = 0.0;
    notifyListeners();
  }
}
