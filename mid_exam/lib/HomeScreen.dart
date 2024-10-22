import 'package:flutter/material.dart';
import 'package:mid_exam/ProductDetailScreen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Asus Vivbobook 15 ',
      'price': 29.99,
      'description':
          'X1605ZA-MB819WSM I5-1235U/16GB DDR4/512GB M.2 NVMe SSD/Win11 Laptop + H&S',
    },
    {
      'name': 'MSI MODERN 14 F13MG-026PH 14',
      'price': 49.99,
      'description':
          'Raptor Lake i3-1315U/8GB DDR4/512GB NVMe PCIe SSD/Win11 Laptop',
    },
    {
      'name': 'MSI Thin A15 B7UCX-084PH 15.6',
      'price': 99.99,
      'description':
          'FHD 144Hz AMD RYZEN 5 7535HS/8GB/512GBSSD/RTX 2050 4GB/WIN11 Laptop',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(products[index]['name']),
          subtitle: Text('\$${products[index]['price']}'),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            // Navigate to product detail page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ProductDetailScreen(product: products[index]),
              ),
            );
          },
        );
      },
    );
  }
}
