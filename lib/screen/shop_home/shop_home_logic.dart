import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_flutter_app/constants/api.dart';
//import 'package:my_flutter_app/providers/shop_provider.dart';
import 'package:dio/dio.dart' as responsee;
//import 'package:my_flutter_app/providers/slider_provider.dart';
import '../../core/widgets/costume_dialog.dart';
// import '../../models/shop_response.dart';
// import '../../models/slider_response.dart';
import '../../routes/app_routes.dart';

class ShopHomeLogic extends GetxController {
  CarouselSliderController carouselController = CarouselSliderController();
}
