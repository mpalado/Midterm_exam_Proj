import 'package:flutter/material.dart';
import 'package:mid_exam/ProductDetailScreen.dart';

class CategoryScreen extends StatelessWidget {
  final String category;

  CategoryScreen({required this.category});

  final Map<String, List<Map<String, dynamic>>> products = {
    'Laptop': [
      {
        'name': 'Laptop 1',
        'price': 599.99,
        'description': 'Powerful laptop with high performance'
      },
      {
        'name': 'Laptop 2',
        'price': 799.99,
        'description': 'Lightweight and portable'
      },
      {
        'name': 'Laptop 3',
        'price': 999.99,
        'description': 'Gaming laptop with RGB keyboard'
      },
    ],
    'Processor': [
      {
        'name': 'Processor 1',
        'price': 199.99,
        'description': 'Fast multi-core processor'
      },
      {
        'name': 'Processor 2',
        'price': 299.99,
        'description': 'Perfect for gaming and streaming'
      },
      {
        'name': 'Processor 3',
        'price': 399.99,
        'description': 'Overclocking potential'
      },
    ],
    'Graphics Card': [
      {
        'name': 'Graphics Card 1',
        'price': 499.99,
        'description': 'Ideal for gaming at high settings'
      },
      {
        'name': 'Graphics Card 2',
        'price': 699.99,
        'description': '4K resolution compatible'
      },
      {
        'name': 'Graphics Card 3',
        'price': 899.99,
        'description': 'Ultimate VR experience'
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$category Products',
            style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: products[category]!.length,
          itemBuilder: (context, index) {
            final product = products[category]![index];
            return buildProductCard(context, product);
          },
        ),
      ),
    );
  }

  Widget buildProductCard(BuildContext context, Map<String, dynamic> product) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      margin: EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          title: Text(
            product['name'],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          subtitle: Text('\$${product['price']}'),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailScreen(product: product),
              ),
            );
          },
        ),
      ),
    );
  }
}
