import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_flutter_app/constants/api.dart';
import 'package:my_flutter_app/core/widgets/loading_dialog.dart';
import 'package:my_flutter_app/models/login_response.dart';
import 'package:my_flutter_app/routes/app_routes.dart';

import '../../../core/helper/input_validator.dart';
import '../../../core/widgets/costume_dialog.dart';
import '../../../providers/auth_provider.dart';

class LoginLogic extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final _provider = AuthProvider();
  LoginResponse loginResponse = LoginResponse();
  final storage = GetStorage();
  Dio dio = Dio();

  validateFields() {
    return InputValidators.emailValidator(emailController.text) == null &&
        InputValidators.simpleValidation(passwordController.text) == null;
  }

  login() async {
    showDialog(
      context: Get.context!,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Loading("logging in..", false);
      },
    );

    String email = emailController.text;
    String password = passwordController.text;

    try {
      print("inside api call");
      var response = await dio.post(
        '$apiBaseUrl/login/',
        data: {
          'email': email,
          'password': password,
        },
      );

      Get.back(); // Dismiss loading dialog

      if (response.statusCode == 200) {
        // Successfully logged in
        print('Login successful: ${response.data}');
        Get.offAllNamed(AppRoutes.homeScreen);
      } else {
        // Handle failed login attempts
        loginResponse = LoginResponse.fromJson(response.data);
        showDialog(
          context: Get.context!,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return CostumeDialog(
              title: loginResponse.status ?? "error",
              titleColor: Colors.red,
              message: loginResponse.message ?? "invalid credentials",
              buttom1Lavel: "Retry",
              onButton1Clicked: () async {
                await login(); // Retry login
              },
              button2Enabled: false,
            );
          },
        );
      }
    } catch (e) {
      print('Error: ${e.toString()}');
      Get.back(); // Dismiss loading dialog
      showDialog(
        context: Get.context!,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return CostumeDialog(
            title: "Error",
            titleColor: Colors.red,
            message: e.toString(),
            buttom1Lavel: "OK",
            onButton1Clicked: () async {
              // await login(); // Retry login
              Get.back();
            },
            button2Enabled: false,
          );
        },
      );
    }
  }
}
