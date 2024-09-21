import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_flutter_app/core/helper/input_validator.dart';
// import 'package:my_flutter_app/core/widgets/costume_dialog.dart';
// import 'package:my_flutter_app/core/widgets/loading_dialog.dart';
// import 'package:dio/dio.dart' as responsee;
import 'package:my_flutter_app/models/login_response.dart';
import 'package:my_flutter_app/providers/auth_provider.dart';
//import 'package:my_flutter_app/routes/app_routes.dart';

// import '../../../core/helper/input_validator.dart';
// import '../../../core/widgets/costume_dialog.dart';
// import '../../../providers/auth_provider.dart';

class RegisterLogic extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  // final _provider = AuthProvider();
  // LoginResponse loginResponse = LoginResponse();
  // final storage = GetStorage();

  validateFields() {
    if (InputValidators.emailValidator(emailController.text) == null &&
        InputValidators.simpleValidation(passwordController.text) == null) {
      return true;
    }
    return false;
  }
}
