import 'package:flutter/material.dart';
import 'package:my_flutter_app/screen/checkout/checkout_view.dart';

class CartView extends StatelessWidget {
  // final String productName;
  // final String productDescription;
  // final double productPrice;
  // final List<String> imageUrls;

  const CartView({
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
        title: Text("Cart"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
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
                        "Necklace",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
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
                        "Good quality",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      // Add to Cart Button
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Checkout()),
                          );
                        },
                        child: Text('Checkout'),
                      ),

                      SizedBox(height: 8),
                      // Buy Now Button
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image Carousel
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          'assets/images/ring.jpg', // Add your logo path here
                          // height: 50, // Adjust logo size
                          // width: 50,
                          fit: BoxFit
                              .cover, // Ensures the image fits within the given size
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product Title
                      Text(
                        "Ring",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
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
                        "Best Quality ring",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      // Add to Cart Button
                      ElevatedButton(
                        onPressed: () {
                          // Add to cart functionality
                        },
                        child: Text('Checkout'),
                      ),
                      SizedBox(height: 8),
                      // Buy Now Button
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
