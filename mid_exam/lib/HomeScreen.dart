import 'package:flutter/material.dart';
import 'package:mid_exam/CategoryScreen.dart'; // Ensure this is the correct path.

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TechShop Store',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Categories',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            buildCategoryTile(context, 'Laptop', Icons.laptop, Colors.deepPurple),
            buildCategoryTile(context, 'Processor', Icons.memory, Colors.blueAccent),
            buildCategoryTile(context, 'Graphics Card', Icons.videogame_asset, Colors.green),
            buildCategoryTile(context, 'Motherboard', Icons.settings_input_hdmi, Colors.orange),
            buildCategoryTile(context, 'RAM', Icons.memory_rounded, Colors.teal),
            buildCategoryTile(context, 'Disk', Icons.storage, Colors.red),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryTile(
      BuildContext context, String category, IconData icon, Color iconColor) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryScreen(category: category),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        margin: const EdgeInsets.only(bottom: 20),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(icon, size: 40, color: iconColor),
              const SizedBox(width: 20),
              Text(
                category,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}
