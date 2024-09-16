import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/core/enums/validation_type.dart';
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
        body: Column(
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
                  decoration: const BoxDecoration(
                    color: Color(0xffb74093),
                    borderRadius: BorderRadius.all(Radius.circular(32)),
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
                              icon: const Icon(Icons.person),
                              onPressed: () {
                                // Action for profile button
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.shopping_cart),
                              onPressed: () {
                                // Action for cart button
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
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/408422438_888491899573928_1661727275984616988_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=bFmkpzF2kXsQ7kNvgGpLWvn&_nc_ht=scontent.fktm7-1.fna&_nc_gid=A-MdXRcDMzYauI_Xu4UM5v_&oh=00_AYCCKTn3r2hHb9Tstlr2u2KESU1uDhprogwUiAkY0r30og&oe=66EE3179"),
                      fit: BoxFit.cover,
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
                          "https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/416340938_906873704402414_4996372259376998305_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=127cfc&_nc_ohc=xXvJGjr2R0wQ7kNvgFxqZII&_nc_ht=scontent.fktm7-1.fna&_nc_gid=AZFUUYRktPQbSUQSh12TFo-&oh=00_AYCcT8bTLAydO5rYzh3-UYLhsc2uvwWrFYzKzaApjKGdug&oe=66EE4AB8"),
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
                          "https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/416340938_906873704402414_4996372259376998305_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=127cfc&_nc_ohc=xXvJGjr2R0wQ7kNvgFxqZII&_nc_ht=scontent.fktm7-1.fna&_nc_gid=AZFUUYRktPQbSUQSh12TFo-&oh=00_AYCcT8bTLAydO5rYzh3-UYLhsc2uvwWrFYzKzaApjKGdug&oe=66EE4AB8"),
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
                          "https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/416340938_906873704402414_4996372259376998305_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=127cfc&_nc_ohc=xXvJGjr2R0wQ7kNvgFxqZII&_nc_ht=scontent.fktm7-1.fna&_nc_gid=AZFUUYRktPQbSUQSh12TFo-&oh=00_AYCcT8bTLAydO5rYzh3-UYLhsc2uvwWrFYzKzaApjKGdug&oe=66EE4AB8"),
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
                          "https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/416340938_906873704402414_4996372259376998305_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=127cfc&_nc_ohc=xXvJGjr2R0wQ7kNvgFxqZII&_nc_ht=scontent.fktm7-1.fna&_nc_gid=AZFUUYRktPQbSUQSh12TFo-&oh=00_AYCcT8bTLAydO5rYzh3-UYLhsc2uvwWrFYzKzaApjKGdug&oe=66EE4AB8"),
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
            const Column(
              children: [
                Text("Categories"),
                Row(
                  children: [],
                )
              ],
            )
          ],
        ),
      );
    });
  }
}