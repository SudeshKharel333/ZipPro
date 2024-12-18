import 'package:get/get.dart';
import 'package:my_flutter_app/screen/checkout/checkout_logic.dart';
//import 'package:my_flutter_app/screen/cart/cart_logic.dart';

class CheckoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckoutLogic());
  }
}
