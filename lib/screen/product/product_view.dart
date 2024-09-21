import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  // final String productName;
  // final String productDescription;
  // final double productPrice;
  // final List<String> imageUrls;

  const ProductPage({
    Key? key,
    // required this.productName,
    // required this.productDescription,
    // required this.productPrice,
    // required this.imageUrls,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return Scaffold();
    return Scaffold(
      appBar: AppBar(
        title: Text("productName"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Carousel
            SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Image.network(
                      'https://www.kgkgroup.com/wp-content/uploads/2023/08/Understand-The-Evolution-Of-Diamond-Jewellery-Through-Time_417x238.jpg');
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
                    "product",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  // Product Price
                  Text(
                    '\$${90}',
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                  SizedBox(height: 8),
                  // Product Description
                  Text(
                    "Description",
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
