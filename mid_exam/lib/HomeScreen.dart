import 'package:flutter/material.dart';
import 'package:mid_exam/CategoryScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TechShop Store',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: Colors.deepPurple, // Using a deep purple for the app bar to stand out
        elevation: 0, // No shadow for a cleaner look
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
                color: Colors.black87, // Dark color for text to stand out on white
              ),
            ),
            const SizedBox(height: 20),
            buildCategoryTile(context, 'Laptop', Icons.laptop, Colors.deepPurple),
            buildCategoryTile(context, 'Processor', Icons.memory, Colors.deepPurple),
            buildCategoryTile(context, 'Graphics Card', Icons.videogame_asset, Colors.deepPurple),
            buildCategoryTile(context, 'Motherboard', Icons.computer, Colors.deepPurple), // Updated icon
            buildCategoryTile(context, 'RAM', Icons.dns, Colors.deepPurple), // Updated icon
            buildCategoryTile(context, 'Disk', Icons.sd_card, Colors.deepPurple), // Updated icon
          ],
        ),
      ),
      backgroundColor: Colors.white, // Light background for the overall page
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
        elevation: 4, // Soft shadow for the cards
        margin: const EdgeInsets.only(bottom: 20),
        color: Colors.white, // White background for the card to match the overall theme
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(icon, size: 40, color: iconColor), // Using passed icon color
              const SizedBox(width: 20),
              Text(
                category,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87, // Dark color for text
                ),
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios, color: Colors.black45), // Subtle gray for the arrow
            ],
          ),
        ),
      ),
    );
  }
}
