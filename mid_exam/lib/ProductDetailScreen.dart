import 'package:flutter/material.dart';
import 'package:mid_exam/provider.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  final Map<String, dynamic> product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product['name'],
            style: Theme.of(context).textTheme.displayLarge),
      ),
      body: Container(
        color: Colors.grey[200], // Light background color for the screen
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.devices,
                size: 100, color: Colors.blue), // Icon representing the product
            SizedBox(height: 20),
            Text(product['name'],
                style: Theme.of(context).textTheme.displayLarge),
            SizedBox(height: 16),
            Text('\$${product['price']}',
                style: TextStyle(fontSize: 24, color: Colors.green)),
            SizedBox(height: 16),
            Text(product['description'],
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<CartProvider>(context, listen: false)
                      .addToCart(product);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text('${product['name']} added to cart!')),
                  );
                },
                child: Text('Add to Cart',
                    style: Theme.of(context).textTheme.labelLarge),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
