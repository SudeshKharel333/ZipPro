import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_flutter_app/routes/app_routes.dart';
import 'package:my_flutter_app/screen/home/home_logic.dart';
import '../../core/app_managers/assets_managers.dart';
import '../../utils/emum.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeLogic>(builder: (logic) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tips_and_updates),
              label: 'Tips',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.messenger),
              label: 'Messenger',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          type: BottomNavigationBarType
              .fixed, //yesle 3 vnda badi icon rakhna help grchha
        ),
        appBar: AppBar(
          title: Text('Parent Container with Text and Image'),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child: const Text('Press Me'),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child: const Text('Press Me'),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child: const Text('Press Me'),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child: const Text('Press Me'),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      createContainer(imagePath),
                      SizedBox(width: 20),
                      createContainer(imagePath),
                      SizedBox(width: 20),
                      createContainer(imagePath),
                      SizedBox(width: 20),
                      createContainer(imagePath),
                      SizedBox(width: 20),
                      createContainer(imagePath),
                      SizedBox(width: 20),
                      createContainer(imagePath),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Wrap(
                  spacing: 10.0, // Spacing between items horizontally
                  runSpacing: 10.0, // Spacing between items vertically
                  children: List.generate(
                    15,
                    (index) => createContainer(imagePath),
                  ),
                ),
              ],
            )),
      );
    });
  }

  Widget createContainer(String imagePath) {
    return Container(
      width: 300,
      height: 400,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 120, 225, 249),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Parent Container with Text',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  offset: Offset(4, 4),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
            ),
          ),
          Text(
            'Parent Container with Text',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Text(
            'Parent Container with Text',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
