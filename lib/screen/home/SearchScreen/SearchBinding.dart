import 'package:get/get.dart';
import 'SearchLogic.dart';

class Searchbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchLogic());
  }
}
