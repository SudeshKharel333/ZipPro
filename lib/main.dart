import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_flutter_app/routes/app_pages.dart';
import 'package:alice/alice.dart';
import 'package:my_flutter_app/screen/auth/login/login_binding.dart';
import 'package:my_flutter_app/screen/auth/login/login_view.dart';
//import 'package:my_flutter_app/screen/auth/login/login_binding.dart';
import 'package:my_flutter_app/screen/shop_home/shop_home_binding.dart';
import 'package:my_flutter_app/screen/shop_home/shop_home_view.dart';
// import 'package:my_flutter_app/screen/auth/register/register_binding.dart';
// import 'package:my_flutter_app/screen/auth/register/register_view.dart';
// import 'package:my_flutter_app/screen/shop_home/shop_home_binding.dart';
// import 'package:my_flutter_app/screen/shop_home/shop_home_view.dart';
import 'package:my_flutter_app/screen/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

late Alice alice;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoggedIn = false; // Initially set to false
  final storage = GetStorage();

  @override
  void initState() {
    alice = Alice(
        // showNotification: true,
        // showInspectorOnShake: true,
        // maxCallsCount: 1000,
        );
    super.initState();
    checkLoginStatus(); // Check login state on app start
  }

  Future<void> checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isLoggedIn = prefs.getBool('isLoggedIn') ?? false; // Load login state
    });

    // Navigate based on login status
    if (isLoggedIn) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ShopHomePage()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: kDebugMode ? alice.getNavigatorKey() : null,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home:
          (storage.read("is_login") != null && storage.read("is_login") == true)
              ? SplashScreen()
              : SplashScreen(),
      initialBinding:
          (storage.read("is_login") != null && storage.read("is_login") == true)
              ? LoginBinding()
              : LoginBinding(),
      getPages: AppPages.pages,
    );
  }
}
