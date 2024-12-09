// product.dart
class Product {
  final int id; // Add id

  final String name;
  final String price;
  final String image;

  Product({
    required this.id, // Include id in the constructor

    required this.name,
    required this.price,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['product_id'], // Parse id from JSON

      name: json['product_name'], // Adjust based on your API response
      price: json['price'], // Adjust based on your API response
      image: json['image'], // Adjust based on your API response
    );
  }
}
