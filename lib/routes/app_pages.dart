import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:my_flutter_app/screen/admin/admin_binding.dart';
import 'package:my_flutter_app/screen/admin/admin_view.dart';
import 'package:my_flutter_app/screen/auth/login/login_binding.dart';
import 'package:my_flutter_app/screen/auth/login/login_view.dart';
import 'package:my_flutter_app/screen/auth/profile/profile_binding.dart';
import 'package:my_flutter_app/screen/auth/profile/profile_view.dart';
import 'package:my_flutter_app/screen/auth/register/register_binding.dart';
import 'package:my_flutter_app/screen/auth/register/register_view.dart';
import 'package:my_flutter_app/screen/cart/cart_binding.dart';
import 'package:my_flutter_app/screen/cart/cart_view.dart';
import 'package:my_flutter_app/screen/product/product_binding.dart';
import 'package:my_flutter_app/screen/product/product_view.dart';
import 'package:my_flutter_app/screen/shop_home/shop_home_binding.dart';
import 'package:my_flutter_app/screen/shop_home/shop_home_view.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    // Home Screen Route
    GetPage(
      name: AppRoutes.homeScreen,
      page: () => const ShopHomePage(),
      binding: ShopHomeBinding(),
    ),

    // Register Page Route
    GetPage(
      name: AppRoutes.registerPage,
      page: () => const RegisterPage(),
      binding: RegisterBinding(),
    ),

    // Login Page Route
    GetPage(
      name: AppRoutes.loginPage,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),

    // Product Page Route
    GetPage(
      name: AppRoutes.productPage,
      page: () => const ProductPage(),
      binding: ProductBinding(),
    ),

    // Profile Page Route
    GetPage(
      name: AppRoutes.profilePage,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: AppRoutes.cartPage,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: AppRoutes.adminPage,
      page: () => const AdminPage(),
      binding: AdminBinding(),
    ),
  ];
}
