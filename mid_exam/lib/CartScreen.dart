import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: cart.cart.isEmpty
                ? Center(child: Text('Your cart is empty'))
                : ListView.builder(
                    itemCount: cart.cart.length,
                    itemBuilder: (context, index) {
                      final item = cart.cart[index];
                      return ListTile(
                        title: Text(item['name']),
                        subtitle: Text('\$${item['price']}'),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            // Remove from cart
                            cart.removeFromCart(item);
                          },
                        ),
                      );
                    },
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total: \$${cart.totalPrice}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
