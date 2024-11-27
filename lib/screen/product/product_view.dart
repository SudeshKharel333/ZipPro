import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final int
      product_id; // Changed variable name to follow Dart naming conventions
  final String product_name;

  ProductPage({required this.product_id, required this.product_name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            product_name), // Use productName instead of product_id.product_name
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Carousel
            SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: 12, // Adjust this based on your actual image count
                itemBuilder: (context, index) {
                  return Image.network(
                    'http://192.168.1.74:3000/images/${product_id.image}',
                    fit: BoxFit.cover,
                    height: 100,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Text(
                          'Image not available',
                          style: TextStyle(color: Colors.red),
                        ),
                      );
                    },
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Title
                  Text(
                    product_name, // Use the productName variable
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  // Product Price
                  Text(
                    '\$price', // Replace with actual price variable if available
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                  SizedBox(height: 8),
                  // Product Description
                  Text(
                    "Good Quality", // Replace with actual description variable if available
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  // Add to Cart Button
                  ElevatedButton(
                    onPressed: () {
                      // Add to cart functionality
                    },
                    child: Text('Add to Cart'),
                  ),
                  SizedBox(height: 8),
                  // Buy Now Button
                  ElevatedButton(
                    onPressed: () {
                      // Buy now functionality
                    },
                    child: Text('Buy Now'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
