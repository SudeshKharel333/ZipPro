// product.dart
class Product {
  final String product_name;
  final String price;
  final String image;

  Product({
    required this.product_name,
    required this.price,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      product_name: json['product_name'], // Adjust based on your API response
      price: json['price'], // Adjust based on your API response
      image: json['image'], // Adjust based on your API response
    );
  }
}
