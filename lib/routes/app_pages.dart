import 'package:get/get.dart';

import 'package:my_flutter_app/screen/auth/editprofile/editprofile_binding.dart';
import 'package:my_flutter_app/screen/auth/editprofile/editprofile_view.dart';
import 'package:my_flutter_app/screen/auth/login/login_binding.dart';
import 'package:my_flutter_app/screen/auth/login/login_view.dart';
import 'package:my_flutter_app/screen/auth/profile/profile_binding.dart';
import 'package:my_flutter_app/screen/auth/profile/profile_view.dart';
import 'package:my_flutter_app/screen/auth/register/register_binding.dart';
import 'package:my_flutter_app/screen/auth/register/register_view.dart';
import 'package:my_flutter_app/screen/cart/cart_binding.dart';
import 'package:my_flutter_app/screen/cart/cart_view.dart';
import 'package:my_flutter_app/screen/search_screen/search_binding.dart';
import 'package:my_flutter_app/screen/search_screen/search_view.dart';
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
      page: () {
        final productId = int.tryParse(Get.parameters['productId'] ?? '') ?? 0;
        return ProductPage(productId: productId);
      },
    ),

    GetPage(
      name: AppRoutes.searchPage,
      page: () {
        final query = Get.parameters['query'] ?? "";
        return SearchScreen(query: query);
      },
      binding: Searchbinding(),
    ),

    // Profile Page Route
    GetPage(
      name: AppRoutes.profilePage,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: AppRoutes.cartPage,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: AppRoutes.editProfilePage,
      page: () => const EditProfileView(),
      binding: EditprofileBinding(),
    ),
  ];
}
