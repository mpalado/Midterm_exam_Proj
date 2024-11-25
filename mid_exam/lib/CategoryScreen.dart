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
Operating System: Windows 11 Home''',
        'imageUrl': 'assets/images/L1.png',
      },
      {
        'name': 'Asus TUF Gaming A15 FA506NFR-HN005W',
        'price': 799.99,
        'description': '''Model Name: Asus TUF Gaming A15 FA506NFR-HN005W
Processor: AMD Ryzen 7 7435HS Mobile Processor
RAM: 8GB DDR5
Storage: 512GB SSD
Graphics: NVIDIA GeForce RTX 2050 Laptop GPU
Display Size: 15.6″ FHD
Operating System: Windows 11 Home''',
        'imageUrl': 'assets/images/L2.png',
      },
      {
        'name': 'Gigabyte G5 MF5-H2PH353KH',
        'price': 999.99,
        'description': '''Processor: Intel® Core™ i7-13620HX
RAM: 16GB DDR5
Storage: 512 GB NVMe SSD
Graphics: NVIDIA® GeForce RTX™ 4050
Display Size: 15.6″ FHD
Operating System: Windows® 11 Home''',
        'imageUrl': 'assets/images/L3.png',
      },
    ],
    'Processor': [
      {
        'name': 'Intel Core i9-13900K',
        'price': 199.99,
        'description': '''Cores: 24 (8 Performance + 16 Efficient)
Threads: 32
Base Clock Speed: 3.0 GHz (Performance Core)
Boost Clock Speed: Up to 5.8 GHz''',
        'imageUrl': 'assets/images/I1.png',
      },
      {
        'name': 'AMD Ryzen 9 7950X',
        'price': 299.99,
        'description': '''Cores: 16
Threads: 32
Base Clock Speed: 4.5 GHz
Boost Clock Speed: Up to 5.7 GHz''',
        'imageUrl': 'assets/images/I2.png',
      },
      {
        'name': 'Intel Core i7-13700K',
        'price': 399.99,
        'description': '''Cores: 16 (8 Performance + 8 Efficient)
Threads: 24
Base Clock Speed: 3.4 GHz (Performance Core)
Boost Clock Speed: Up to 5.4 GHz''',
        'imageUrl': 'assets/images/I3.png',
      },
    ],
    'Graphics Card': [
      {
        'name': 'NVIDIA GeForce RTX 4070',
        'price': 499.99,
        'description': '''VRAM: 12GB GDDR6X
CUDA Cores: 5888
Boost Clock: 2.61 GHz
Ray Tracing and AI features, ideal for 1440p gaming''',
        'imageUrl': 'assets/images/g1.png',
      },
      {
        'name': 'AMD Radeon RX 7900 XT',
        'price': 699.99,
        'description': '''VRAM: 20GB GDDR6
Stream Processors: 5376
Boost Clock: 2.4 GHz
Exceptional 4K gaming performance''',
        'imageUrl': 'assets/images/g2.png',
      },
      {
        'name': 'NVIDIA GeForce RTX 4090',
        'price': 899.99,
        'description': '''VRAM: 24GB GDDR6X
CUDA Cores: 16384
Boost Clock: 2.52 GHz
The best option for 4K gaming and ultimate VR experience''',
        'imageUrl': 'assets/images/g3.png',
      },
    ],
    'Motherboard': [
      {
        'name': 'ASUS ROG Strix Z690-E',
        'price': 329.99,
        'description': '''Socket: LGA 1700
Chipset: Intel Z690
Form Factor: ATX
Supports Intel 12th Gen CPUs
PCIe 5.0 Support''',
        'imageUrl': 'assets/images/m1.png',
      },
      {
        'name': 'MSI MAG B550 TOMAHAWK',
        'price': 149.99,
        'description': '''Socket: AM4
Chipset: AMD B550
Form Factor: ATX
Supports AMD Ryzen 5000 & 3000 series CPUs
PCIe 4.0 Support''',
        'imageUrl': 'assets/images/m2.png',
      },
      {
        'name': 'Gigabyte Z590 AORUS ELITE',
        'price': 249.99,
        'description': '''Socket: LGA 1200
Chipset: Intel Z590
Form Factor: ATX
Supports Intel 10th & 11th Gen CPUs
PCIe 4.0 Support''',
        'imageUrl': 'assets/images/m3.png',
      },
    ],
    'RAM': [
      {
        'name': 'Corsair Vengeance LPX 16GB (2 x 8GB)',
        'price': 79.99,
        'description': '''Type: DDR4
Capacity: 16GB (2 x 8GB)
Speed: 3200MHz
CAS Latency: 16
Voltage: 1.35V''',
        'imageUrl': 'assets/images/r1.png',
      },
      {
        'name': 'G.Skill Ripjaws V 32GB (2 x 16GB)',
        'price': 149.99,
        'description': '''Type: DDR4
Capacity: 32GB (2 x 16GB)
Speed: 3600MHz
CAS Latency: 16
Voltage: 1.35V''',
        'imageUrl': 'assets/images/r2.png',
      },
      {
        'name': 'Kingston Fury Beast 16GB (2 x 8GB)',
        'price': 89.99,
        'description': '''Type: DDR4
Capacity: 16GB (2 x 8GB)
Speed: 3200MHz
CAS Latency: 16
Voltage: 1.35V''',
        'imageUrl': 'assets/images/r3.png',
      },
    ],
    'Disk': [
      {
        'name': 'Samsung 970 EVO Plus 1TB SSD',
        'price': 129.99,
        'description': '''Capacity: 1TB
Interface: NVMe M.2
Read Speed: 3500 MB/s
Write Speed: 3300 MB/s''',
        'imageUrl': 'assets/images/d1.png',
      },
      {
        'name': 'Western Digital WD Black SN850X 1TB SSD',
        'price': 139.99,
        'description': '''Capacity: 1TB
Interface: PCIe Gen 4.0 x4
Read Speed: 7300 MB/s
Write Speed: 6600 MB/s''',
        'imageUrl': 'assets/images/d2.png',
      },
      {
        'name': 'Seagate FireCuda 530 1TB SSD',
        'price': 149.99,
        'description': '''Capacity: 1TB
Interface: PCIe Gen 4.0 x4
Read Speed: 7300 MB/s
Write Speed: 6900 MB/s''',
        'imageUrl': 'assets/images/d3.png',
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categoryProducts =
        products[category] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.7,
        ),
        itemCount: categoryProducts.length,
        itemBuilder: (ctx, index) {
          final product = categoryProducts[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(
                    product: product,
                  ),
                ),
              );
            },
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      product['imageUrl'],
                      height: 150.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product['name'],
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '\$${product['price']}',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
