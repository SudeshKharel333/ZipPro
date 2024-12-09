import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:my_flutter_app/screen/product/product_view.dart';
import 'package:my_flutter_app/widgets/product.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key, required this.query}) : super(key: key);
  final String query;

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Product> _products = [];
  List<Product> _filteredProducts = [];
  final Dio _dio = Dio();
  bool _isLoading = false;
  String _errorMessage = "";

  @override
  void initState() {
    super.initState();
    fetchProducts();
    _filterProducts(widget.query); // Filter products based on the query
  }

  Future<void> fetchProducts({String query = ''}) async {
    try {
      // Update the URL with query parameter for search
      final response = await _dio.get(
        'http://192.168.1.66:4000/api/products/search',
        queryParameters: {'query': query}, // Pass the search query
      );
      if (response.statusCode == 200) {
        setState(() {
          _products = List<Product>.from(
            response.data.map((item) => Product.fromJson(item)),
          );
          _filteredProducts = _products; // Initially display all products
        });
      } else {
        print('Failed to load products: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching products: $e');
    }
  }

  void _filterProducts(String query) {
    final results = _products.where((product) {
      final nameLower = product.name.toLowerCase();
      final queryLower = query.toLowerCase();
      return nameLower.contains(queryLower);
    }).toList();

    setState(() {
      _filteredProducts = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Products"),
        backgroundColor: Colors.purple,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _errorMessage.isNotEmpty
              ? Center(
                  child: Text(
                    _errorMessage,
                    style: const TextStyle(color: Colors.red, fontSize: 16),
                  ),
                )
              : Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _searchController,
                        onChanged: _filterProducts,
                        decoration: InputDecoration(
                          hintText: "Search for products...",
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: _filteredProducts.isEmpty
                          ? const Center(
                              child: Text(
                                "No products found!",
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                            )
                          : GridView.builder(
                              padding: const EdgeInsets.all(8.0),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                              ),
                              itemCount: _filteredProducts.length,
                              itemBuilder: (context, index) {
                                final product = _filteredProducts[index];
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ProductPage(
                                          productId: product.id,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.purpleAccent,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            'http://192.168.1.66:4000/images/${product.image}',
                                            fit: BoxFit.cover,
                                            height: 100,
                                            width: double.infinity,
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                              return const Center(
                                                child: Text(
                                                  'Image not available',
                                                  style: TextStyle(
                                                      color: Colors.red),
                                                ),
                                              );
                                            },
                                            loadingBuilder: (context, child,
                                                loadingProgress) {
                                              if (loadingProgress == null) {
                                                return child;
                                              }
                                              return const Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                product.name,
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(
                                                '\$${product.price}',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
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
                    ),
                  ],
                ),
    );
  }
}
