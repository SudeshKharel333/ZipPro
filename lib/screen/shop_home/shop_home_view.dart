import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/core/enums/validation_type.dart';
import 'package:my_flutter_app/screen/auth/profile/profile_view.dart';
import 'package:my_flutter_app/screen/cart/cart_view.dart';
import 'package:my_flutter_app/screen/product/product_view.dart';
import '../../widgets/input_fields.dart';
import 'shop_home_logic.dart';

class ShopHomePage extends StatefulWidget {
  const ShopHomePage({super.key});

  @override
  State<ShopHomePage> createState() => _ShopHomePageState();
}

class _ShopHomePageState extends State<ShopHomePage> {
  @override
  Widget build(BuildContext context) {
    // final logic = Get.find<ShopHomeLogic>();

    return GetBuilder<ShopHomeLogic>(builder: (logic) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  const SizedBox(
                    height: 220,
                  ),
                  // Background container
                  Container(
                    height: 175,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffb74093),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                    ),
                  ),
                  // Search input field
                  const Positioned(
                    top: 155,
                    left: 60,
                    right: 60,
                    child: CostumeFormField.search(
                      validationType: ValidationType.common,
                    ),
                  ),
                  // Row for Logo, Profile, and Cart icons
                  Positioned(
                    top: 80,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Leading - Logo
                          Image.asset(
                            'assets/images/Zippro.png', // Add your logo path here
                            height: 50, // Adjust logo size
                            width: 50,
                          ),
                          // Actions - Profile and Cart icons
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.person, size: 25),
                                onPressed: () {
                                  // Navigate to ProfilePage when the icon is clicked
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProfilePage()),
                                  );
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.shopping_cart, size: 25),
                                onPressed: () {
                                  // Navigate to ProfilePage when the icon is clicked
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const CartView()),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 180,
                child: CarouselSlider(
                  items: [
                    //1st Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            8.0), // Ensures the image follows the border radius
                        child: Image.asset(
                          'assets/images/momo.png', // Add your logo path here
                          // height: 50, // Adjust logo size
                          // width: 50,
                          fit: BoxFit
                              .cover, // Ensures the image fits within the given size
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://www.allrecipes.com/thmb/ygY1JXP8_IkDSjPPW5VH2dTiMMU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/50347-indian-tandoori-chicken-DDMFS-4x3-3035-205e98c80b2f4275b5bd010c396d9149.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://www.allrecipes.com/thmb/ygY1JXP8_IkDSjPPW5VH2dTiMMU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/50347-indian-tandoori-chicken-DDMFS-4x3-3035-205e98c80b2f4275b5bd010c396d9149.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //4th Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://www.allrecipes.com/thmb/ygY1JXP8_IkDSjPPW5VH2dTiMMU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/50347-indian-tandoori-chicken-DDMFS-4x3-3035-205e98c80b2f4275b5bd010c396d9149.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //5th Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://www.allrecipes.com/thmb/ygY1JXP8_IkDSjPPW5VH2dTiMMU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/50347-indian-tandoori-chicken-DDMFS-4x3-3035-205e98c80b2f4275b5bd010c396d9149.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 180.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  //color: Colors.purple, // Background color of the container
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  border: Border.all(
                    color: Colors.purpleAccent, // Border color
                    width: 2, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    const Expanded(
                        child: Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    )),
                    Container(
                      width: MediaQuery.of(context)
                          .size
                          .width, // Set the desired width
                      height: 100, // Set the desired height
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Card(
                              elevation: 5, // Shadow depth
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Rounded corners
                              ),
                              color: Colors.purple, // Card background color
                              child: const SizedBox(
                                width: 100, // Fixed width for the card
                                height: 100, // Fixed height for the card
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                      16.0), // Padding around the text
                                  child: Center(
                                    child: Text(
                                      'Food and beverage', // Long text that may wrap
                                      textAlign: TextAlign
                                          .center, // Center the text horizontally
                                      style: const TextStyle(
                                        color: Colors.white, // Text color
                                        fontSize: 12, // Font size
                                        fontWeight:
                                            FontWeight.bold, // Bold text
                                      ),
                                      maxLines:
                                          2, // Max number of lines to avoid overflow
                                      overflow: TextOverflow
                                          .ellipsis, // Add "..." if text overflows
                                      softWrap:
                                          true, // Wrap text to fit within the available space
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5, // Shadow depth
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Rounded corners
                              ),
                              color: Colors.purple, // Card background color
                              child: const SizedBox(
                                width: 100, // Fixed width for the card
                                height: 100, // Fixed height for the card
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                      16.0), // Padding around the text
                                  child: Center(
                                    child: Text(
                                      'Retail and Wholesale', // Long text that may wrap
                                      textAlign: TextAlign
                                          .center, // Center the text horizontally
                                      style: const TextStyle(
                                        color: Colors.white, // Text color
                                        fontSize: 12, // Font size
                                        fontWeight:
                                            FontWeight.bold, // Bold text
                                      ),
                                      maxLines:
                                          2, // Max number of lines to avoid overflow
                                      overflow: TextOverflow
                                          .ellipsis, // Add "..." if text overflows
                                      softWrap:
                                          true, // Wrap text to fit within the available space
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5, // Shadow depth
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Rounded corners
                              ),
                              color: Colors.purple, // Card background color
                              child: const SizedBox(
                                width: 100, // Fixed width for the card
                                height: 100, // Fixed height for the card
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                      16.0), // Padding around the text
                                  child: Center(
                                    child: Text(
                                      'Retail and wholesale', // Long text that may wrap
                                      textAlign: TextAlign
                                          .center, // Center the text horizontally
                                      style: const TextStyle(
                                        color: Colors.white, // Text color
                                        fontSize: 12, // Font size
                                        fontWeight:
                                            FontWeight.bold, // Bold text
                                      ),
                                      maxLines:
                                          2, // Max number of lines to avoid overflow
                                      overflow: TextOverflow
                                          .ellipsis, // Add "..." if text overflows
                                      softWrap:
                                          true, // Wrap text to fit within the available space
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5, // Shadow depth
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Rounded corners
                              ),
                              color: Colors.purple, // Card background color
                              child: const SizedBox(
                                width: 100, // Fixed width for the card
                                height: 100, // Fixed height for the card
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                      16.0), // Padding around the text
                                  child: Center(
                                    child: Text(
                                      'Agriculture', // Long text that may wrap
                                      textAlign: TextAlign
                                          .center, // Center the text horizontally
                                      style: const TextStyle(
                                        color: Colors.white, // Text color
                                        fontSize: 12, // Font size
                                        fontWeight:
                                            FontWeight.bold, // Bold text
                                      ),
                                      maxLines:
                                          2, // Max number of lines to avoid overflow
                                      overflow: TextOverflow
                                          .ellipsis, // Add "..." if text overflows
                                      softWrap:
                                          true, // Wrap text to fit within the available space
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5, // Shadow depth
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Rounded corners
                              ),
                              color: Colors.purple, // Card background color
                              child: const Padding(
                                padding: const EdgeInsets.all(
                                    16.0), // Padding around the text
                                child: Center(
                                  child: Text(
                                    'Category',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                      fontSize: 18, // Font size
                                      fontWeight: FontWeight.bold, // Bold text
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5, // Shadow depth
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Rounded corners
                              ),
                              color: Colors.purple, // Card background color
                              child: const Padding(
                                padding: const EdgeInsets.all(
                                    16.0), // Padding around the text
                                child: Center(
                                  child: Text(
                                    'Category',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                      fontSize: 18, // Font size
                                      fontWeight: FontWeight.bold, // Bold text
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5, // Shadow depth
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Rounded corners
                              ),
                              color: Colors.purple, // Card background color
                              child: const Padding(
                                padding: const EdgeInsets.all(
                                    16.0), // Padding around the text
                                child: Center(
                                  child: Text(
                                    'Category',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                      fontSize: 18, // Font size
                                      fontWeight: FontWeight.bold, // Bold text
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 400,
                child: Column(
                  children: [
                    Text(
                      "Flash Sales",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to the second page on tap
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductPage()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            children: List.generate(12, (index) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.purpleAccent,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // Product Image
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          8), // Match the container's border radius
                                      child: Image.network(
                                          'https://www.kgkgroup.com/wp-content/uploads/2023/08/Understand-The-Evolution-Of-Diamond-Jewellery-Through-Time_417x238.jpg'),
                                    ),
                                    // Product Name and Price
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Product Name Necklace', // Replace with your product name
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            '\$${50}', // Replace with your product price
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
                              );
                            }),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 400,
                child: Column(
                  children: [
                    Text(
                      "Featured products",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to the second page on tap
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductPage()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            children: List.generate(12, (index) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.purpleAccent,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // Product Image
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          8), // Match the container's border radius
                                      child: Image.network(
                                        'https://static.meroorder.com/media/images/items/1697015939822_detail-laptop-table-1.webp',
                                        height: 100,
                                        width: 100,
                                      ),
                                    ),
                                    // Product Name and Price
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Product Name: Study table', // Replace with your product name
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            '\$${5}', // Replace with your product price
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
                              );
                            }),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 400,
                child: Column(
                  children: [
                    Text(
                      "Bulk deals",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            children: List.generate(12, (index) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.purpleAccent,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    'product',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              );
                            })),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home ',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.camera),
            //   label: '',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
          ],
        ),
      );
    });
  }
}
