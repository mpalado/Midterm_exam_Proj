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
        'imageUrl': 'https://ecommerce.datablitz.com.ph/cdn/shop/files/sdvsdsvd_800x.jpg?v=1711969553',
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
        'imageUrl': 'https://d1rlzxa98cyc61.cloudfront.net/catalog/product/1/9/193628_2024_7.jpg?auto=webp&format=pjpg&width=640',
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
        'imageUrl': 'https://ecommerce.datablitz.com.ph/cdn/shop/files/G5_2023_-06_76e336a1-13fe-4c55-9463-346f6ac07e0f_1024x.jpg?v=1725603433',
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
        'imageUrl': 'https://i.ebayimg.com/images/g/OFoAAOSwEkpjfbgV/s-l1200.jpg',
      },
      {
        'name': 'AMD Ryzen 9 7950X',
        'price': 299.99,
        'description': '''Cores: 16
Threads: 32
Base Clock Speed: 4.5 GHz
Boost Clock Speed: Up to 5.7 GHz''',
        'imageUrl': 'https://ecommerce.datablitz.com.ph/cdn/shop/products/viber_image_2022-10-01_12-09-58-548_800x.jpg?v=1678846754',
      },
      {
        'name': 'Intel Core i7-13700K',
        'price': 399.99,
        'description': '''Cores: 16 (8 Performance + 8 Efficient)
Threads: 24
Base Clock Speed: 3.4 GHz (Performance Core)
Boost Clock Speed: Up to 5.4 GHz''',
        'imageUrl': 'https://ecommerce.datablitz.com.ph/cdn/shop/products/19-118-414-V01_800x.jpg?v=1676895304',
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
        'imageUrl': 'https://ecommerce.datablitz.com.ph/cdn/shop/files/1024_40_c9f76b61-553a-4b34-8706-b89adcadf8aa.jpg?v=1705976614',
      },
      {
        'name': 'AMD Radeon RX 7900 XT',
        'price': 699.99,
        'description': '''VRAM: 20GB GDDR6
Stream Processors: 5376
Boost Clock: 2.4 GHz
Exceptional 4K gaming performance''',
        'imageUrl': 'https://ecommerce.datablitz.com.ph/cdn/shop/files/fwebp_12_a0f5ed4f-000b-4a81-802c-e5df40124a7c.jpg?v=1710058647',
      },
      {
        'name': 'NVIDIA GeForce RTX 4090',
        'price': 899.99,
        'description': '''VRAM: 24GB GDDR6X
CUDA Cores: 16384
Boost Clock: 2.52 GHz
The best option for 4K gaming and ultimate VR experience''',
        'imageUrl': 'https://m.media-amazon.com/images/I/51c1zFDNVmL._AC_SL6003_.jpg',
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
        'imageUrl': 'https://dlcdnwebimgs.asus.com/files/media/F06BD967-FC83-4514-8AC4-760944D051CC/v2/img/performance/header-pd.png',
      },
      {
        'name': 'MSI MAG B550 TOMAHAWK',
        'price': 149.99,
        'description': '''Socket: AM4
Chipset: AMD B550
Form Factor: ATX
Supports AMD Ryzen 5000 & 3000 series CPUs
PCIe 4.0 Support''',
        'imageUrl': 'https://ecommerce.datablitz.com.ph/cdn/shop/products/1024_56_800x.jpg?v=1676878243',
      },
      {
        'name': 'Gigabyte Z590 AORUS ELITE',
        'price': 249.99,
        'description': '''Socket: LGA 1200
Chipset: Intel Z590
Form Factor: ATX
Supports Intel 10th & 11th Gen CPUs
PCIe 4.0 Support''',
        'imageUrl': 'https://media.karousell.com/media/photos/products/2022/12/14/refurbished_gaz590aoruselite_a_1671009314_b952da60_progressive',
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
        'imageUrl': 'https://ecommerce.datablitz.com.ph/cdn/shop/files/main_8e0b2831-e408-4a8c-b573-445ba924a975_1024x.jpg?v=1713585199',
      },
      {
        'name': 'G.Skill Ripjaws V 32GB (2 x 16GB)',
        'price': 149.99,
        'description': '''Type: DDR4
Capacity: 32GB (2 x 16GB)
Speed: 3600MHz
CAS Latency: 16
Voltage: 1.35V''',
        'imageUrl': 'https://ecommerce.datablitz.com.ph/cdn/shop/products/156283353510_800x.jpg?v=1676901090',
      },
      {
        'name': 'Kingston Fury Beast 16GB (2 x 8GB)',
        'price': 89.99,
        'description': '''Type: DDR4
Capacity: 16GB (2 x 8GB)
Speed: 3200MHz
CAS Latency: 16
Voltage: 1.35V''',
        'imageUrl': 'https://easypc.com.ph/cdn/shop/files/Kingston_Fury_Beast_KF432C16BB2AK2_16_Black-b_2048x.jpg?v=1697441812',
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
        'imageUrl': 'https://easypc.com.ph/cdn/shop/products/Samsung_970_EVO_Plus_1TB_NVME_M.2_Solid_State_Drive-d_2048x.jpg?v=1701413193',
      },
      {
        'name': 'Western Digital WD Black SN850X 1TB SSD',
        'price': 139.99,
        'description': '''Capacity: 1TB
Interface: PCIe Gen 4.0 x4
Read Speed: 7300 MB/s
Write Speed: 6600 MB/s''',
        'imageUrl': 'https://ecommerce.datablitz.com.ph/cdn/shop/products/wd-black-sn850x-nvme-ssd-front.png.wdthumb.1280.1280.jpg?v=1707897519',
      },
      {
        'name': 'Seagate FireCuda 530 1TB SSD',
        'price': 149.99,
        'description': '''Capacity: 1TB
Interface: PCIe Gen 4.0 x4
Read Speed: 7300 MB/s
Write Speed: 6900 MB/s''',
        'imageUrl': 'https://ecommerce.datablitz.com.ph/cdn/shop/products/product-detail-product-image-2_l.jpg?v=1676880873',
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
