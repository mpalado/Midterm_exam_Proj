import 'package:flutter/material.dart';
import 'package:mid_exam/CheckOutScreen.dart';
import 'package:mid_exam/provider.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title:
            Text('Your Cart', style: Theme.of(context).textTheme.displayLarge),
      ),
      body: Column(
        children: [
          Expanded(
            child: cart.cart.isNotEmpty
                ? ListView.builder(
                    itemCount: cart.cart.length,
                    itemBuilder: (context, index) {
                      final item = cart.cart[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        child: ListTile(
                          tileColor: Colors.blueGrey[
                              100], // Background color for each cart item
                          leading:
                              Icon(Icons.devices, size: 40, color: Colors.blue),
                          title: Text(item['name'],
                              style: Theme.of(context).textTheme.displayMedium),
                          subtitle: Text('\$${item['price']}',
                              style: TextStyle(color: Colors.green)),
                          trailing: IconButton(
                            icon: Icon(Icons.remove_circle, color: Colors.red),
                            onPressed: () {
                              cart.removeFromCart(item);
                            },
                          ),
                        ),
                      );
                    },
                  )
                : Center(
                    child: Text('Your cart is empty!',
                        style: Theme.of(context).textTheme.displayMedium)),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total: \$${cart.totalPrice}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          if (cart.cart.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CheckoutScreen()));
                },
                child: Text('Proceed to Checkout'),
              ),
            ),
        ],
      ),
    );
  }
}
