import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/widgets/input_fields.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../core/app_managers/assets_managers.dart';
import '../../core/enums/validation_type.dart';
import 'shop_home_logic.dart';

class ShopHomePage extends StatefulWidget {
  const ShopHomePage({Key? key})
      : super(
            key:
                key); //this line defines a constant constructor for the ShopHomePage widget, which can optionally take a Key parameter and passes this key to its superclass. This setup is common in Flutter when creating custom widgets.

  @override
  State<ShopHomePage> createState() => _ShopHomePageState();
}

class _ShopHomePageState extends State<ShopHomePage> {
  @override
  Widget build(BuildContext context) {
    // final logic = Get.find<ShopHomeLogic>();

    return GetBuilder<ShopHomeLogic>(builder: (logic) {
      return Scaffold(
          backgroundColor: Colors.blue.shade50,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                        height: 130,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(32))),
                        width: double.infinity),
                    const Positioned(
                      top: 75,
                      left: 60,
                      right: 60,
                      child: CostumeFormField.search(
                        validationType: ValidationType.common,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: CarouselSlider(
                      carouselController: logic.carouselController,
                      items: logic.imgList
                          .map((item) => Container(
                                child: Image.network(item),
                              ))
                          .toList(),
                      options: CarouselOptions(
                          height: 120.0,
                          autoPlay: true,
                          enlargeFactor: .1,
                          viewportFraction: .6,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          pauseAutoPlayOnTouch: true,
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              logic.current = index;
                            });
                          })),
                ),
                Gap(6),
                Text("I am Sudesh"),
                SizedBox(
                  height: 200, // Set the height of the ListView
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 200, // Set the width of the container
                        height: 200, // Set the height of the container
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey, // Set the border color
                            width: 2.0, // Set the border width
                          ),
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(4, 4),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          // The ClipRRect widget is used to clip its child (the content inside it) with rounded corners.
                          borderRadius: BorderRadius.circular(
                              8), // Set border radius for the oval effect
                          child: Image.network(
                              'https://picsum.photos/250?image=10'),
                        ),
                      ),
                      Image.network('https://picsum.photos/250?image=10'),
                      Image.network('https://picsum.photos/250?image=11'),
                      Image.network('https://picsum.photos/250?image=12'),
                      Image.network('https://picsum.photos/250?image=13'),
                      Image.network('https://picsum.photos/250?image=14'),
                      Image.network('https://picsum.photos/250?image=15'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 400, // Set the height of the GridView
                  child: GridView.count(
                    // physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 3,
                    children: [
                      Image.network('https://picsum.photos/200?image=25'),
                      Image.network('https://picsum.photos/200?image=26'),
                      Image.network('https://picsum.photos/200?image=27'),
                      Image.network('https://picsum.photos/200?image=28'),
                      Image.network('https://picsum.photos/200?image=29'),
                      Image.network('https://picsum.photos/200?image=30'),
                      Image.network('https://picsum.photos/200?image=25'),
                      Image.network('https://picsum.photos/200?image=26'),
                      Image.network('https://picsum.photos/200?image=27'),
                      Image.network('https://picsum.photos/200?image=28'),
                      Image.network('https://picsum.photos/200?image=29'),
                      Image.network('https://picsum.photos/200?image=30'),
                      // Add more images as needed
                    ],
                  ),
                ),
              ],
            ),
          ));
    });
  }
}
