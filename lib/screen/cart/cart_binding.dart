import 'package:get/get.dart';
import 'package:my_flutter_app/screen/cart/cart_logic.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartLogic());
  }
}
