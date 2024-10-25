import 'package:flutter/material.dart';
import 'package:mid_exam/ProductDetailScreen.dart';

class CategoryScreen extends StatelessWidget {
  final String category;

  CategoryScreen({required this.category});

  final Map<String, List<Map<String, dynamic>>> products = {
    'Laptop': [
      {
        'name': 'MSI Cyborg 15 A12UCX-1298PH',
        'price': 599.99,
        'description': '''Model Name: MSI Cyborg 15 A12UCX-1298PH
Processor: Intel Core i5 12450H
RAM: 8GB DDR5
Storage: 512GB SSD
Graphics: NVIDIA® GeForce RTX™ 2050 Laptop GPU 4GB GDDR6
Display Size: 15.6″ FHD (1920×1080), 144Hz, IPS-Level
Operating System: Windows 11 Home'''
      },
      {
        'name': 'Asus TUF Gaming A15 FA506NFR-HN005W',
        'price': 799.99,
        'description': '''Model Name: Asus TUF Gaming A15 FA506NFR-HN005W
Processor: AMD Ryzen 7 7435HS Mobile Processor 3.1GHz (20MB Cache, up to 4.5 GHz, 8 cores, 16 Threads)
RAM: 8GB DDR5-5600 SO-DIMM
Storage: 512GB M.2 SSD NVMe PCIe 4.0
Graphics: NVIDIA GeForce RTX 2050 Laptop 4GB GDDR6
Display Size: 15.6″ 250nits FHD
Operating System: Windows 11 Home'''
      },
      {
        'name': 'Gigabyte G5 MF5-H2PH353KH',
        'price': 999.99,
        'description': '''Processor: Intel® Core™ i7-13620HX
RAM: 16GB DDR5
Storage: 512 GB NVMe SSD
Graphics: NVIDIA® GeForce RTX™ 4050
Display Size: 15.6″ FHD 165Hz
Operating System: Windows® 11 Home'''
      },
    ],
    'Processor': [
      {
        'name': 'Intel Core i9-13900K',
        'price': 199.99,
        'description': '''Cores: 24 (8 Performance + 16 Efficient)
Threads: 32
Base Clock Speed: 3.0 GHz (Performance Core)
Boost Clock Speed: Up to 5.8 GHz
Cache: 36MB Intel Smart Cache
TDP: 125W'''
      },
      {
        'name': 'AMD Ryzen 9 7950X',
        'price': 299.99,
        'description': '''Cores: 16
Threads: 32
Base Clock Speed: 4.5 GHz
Boost Clock Speed: Up to 5.7 GHz
Cache: 80MB (L2 + L3)
TDP: 170W'''
      },
      {
        'name': 'Intel Core i7-13700K',
        'price': 399.99,
        'description': '''Cores: 16 (8 Performance + 8 Efficient)
Threads: 24
Base Clock Speed: 3.4 GHz (Performance Core)
Boost Clock Speed: Up to 5.4 GHz
Cache: 30MB Intel Smart Cache
TDP: 125W'''
      },
    ],
    'Graphics Card': [
      {
        'name': 'NVIDIA GeForce RTX 4070',
        'price': 499.99,
        'description':
            'VRAM: 12GB GDDR6X, CUDA Cores: 5888, Boost Clock: 2.61 GHz, Ray Tracing and AI features, ideal for 1440p gaming'
      },
      {
        'name': 'AMD Radeon RX 7900 XT',
        'price': 699.99,
        'description':
            'VRAM: 20GB GDDR6, Stream Processors: 5376, Boost Clock: 2.4 GHz, exceptional 4K gaming performance'
      },
      {
        'name': 'NVIDIA GeForce RTX 4090',
        'price': 899.99,
        'description':
            'VRAM: 24GB GDDR6X, CUDA Cores: 16384, Boost Clock: 2.52 GHz, the best option for 4K gaming and ultimate VR experience'
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
