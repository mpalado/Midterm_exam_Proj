import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, child) {
          if (cartProvider.cart.isEmpty) {
            return Center(child: Text('Your cart is empty.'));
          }
          return ListView.builder(
            itemCount: cartProvider.cart.length,
            itemBuilder: (context, index) {
              final product = cartProvider.cart[index];
              return ListTile(
                title: Text(product['name']),
                subtitle: Text('\$${product['price'].toString()}'),
              );
            },
          );
        },
      ),
    );
  }
}
