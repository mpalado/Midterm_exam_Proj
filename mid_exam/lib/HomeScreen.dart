import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider.dart';
import 'CartScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {'name': 'Laptop', 'price': 999.99},
      {'name': 'Smartphone', 'price': 499.99},
      {'name': 'Headphones', 'price': 199.99},
      {'name': 'Smart Watch', 'price': 299.99},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('TechShop Store'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product['name']),
            subtitle: Text('\$${product['price'].toString()}'),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                Provider.of<CartProvider>(context, listen: false)
                    .addToCart(product);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${product['name']} added to cart!'),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
