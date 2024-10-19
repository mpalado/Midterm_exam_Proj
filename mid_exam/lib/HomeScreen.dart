import 'package:flutter/material.dart';
import 'package:mid_exam/CartScreen.dart';
import 'package:mid_exam/ProductDetailScreen.dart';
import 'package:mid_exam/provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Laptop',
      'price': 999.99,
      'description': 'High performance laptop'
    },
    {'name': 'Smartphone', 'price': 499.99, 'description': 'Latest smartphone'},
    {
      'name': 'Headphones',
      'price': 199.99,
      'description': 'Noise-cancelling headphones'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TechShop Store',
            style: Theme.of(context).textTheme.displayLarge),
        actions: [
          Consumer<CartProvider>(
            builder: (context, cart, child) {
              return IconButton(
                icon: Stack(
                  children: [
                    Icon(Icons.shopping_cart, size: 28),
                    if (cart.cartItemCount > 0)
                      Positioned(
                        right: 0,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.red,
                          child: Text('${cart.cartItemCount}',
                              style: TextStyle(fontSize: 12)),
                        ),
                      ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartScreen()));
                },
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ProductDetailScreen(product: product)),
                );
              },
              child: Card(
                color: Colors
                    .blueGrey[100], // Background color for the product card
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.devices,
                          size: 50, color: Colors.blue), // Product icon
                      SizedBox(height: 20),
                      Text(product['name'],
                          style: Theme.of(context).textTheme.displayMedium,
                          textAlign: TextAlign.center),
                      SizedBox(height: 8),
                      Text('\$${product['price']}',
                          style: TextStyle(fontSize: 18, color: Colors.green)),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
