import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/widgets/input_fields.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
          body: Column(
            children: [
              Stack(

                children: [
                  const SizedBox(
                      height:130,
                  ),
                   Container(
                    height: 100,
                    decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(32)
                    )
                    ),
                    width:double.infinity
                  ),
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
              Gap(6),
              CarouselSlider(
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
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      pauseAutoPlayOnTouch: true,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          logic.current = index;
                        }
                        );
                      }
                      )
              ),
              Gap(6),
              Text(" iam sudesh"),
              Expanded(
                child: ListView(
                  // try changing to `scrollDirection: Axis.horizontal` to see horizontal list
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.network('https://picsum.photos/250?image=9',),
                    Image.network('https://picsum.photos/250?image=10'),
                    Image.network('https://picsum.photos/250?image=11'),
                    Image.network('https://picsum.photos/250?image=12'),
                    Image.network('https://picsum.photos/250?image=13'),
                    Image.network('https://picsum.photos/250?image=14'),
                    Image.network('https://picsum.photos/250?image=15'),
                  ],
                ),
              )

              
            ],

          )
      );
    });
  }
}

