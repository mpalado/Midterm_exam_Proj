import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider.dart';

class ProductDetailScreen extends StatelessWidget {
  final Map<String, dynamic> product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              product['name'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '\$${product['price']}',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            SizedBox(height: 20),
            Text(product['description']),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add product to cart
                Provider.of<CartProvider>(context, listen: false)
                    .addToCart(product);
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
