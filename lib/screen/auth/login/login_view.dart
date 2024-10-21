import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/core/app_managers/assets_managers.dart';
import 'package:my_flutter_app/core/enums/validation_type.dart';
import 'package:my_flutter_app/screen/auth/register/register_view.dart';

import '../../../widgets/buttons.dart';
import '../../../widgets/input_fields.dart';
import 'login_logic.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginLogic>(builder: (logic) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 167, 218, 242),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      AssetManager.Zippro,
                      width: 170,
                      height: 170,
                    ),
                  ),
                  Gap(12),
                  Text(
                    "Welcome to \n ZipPro",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "version 1.0.0",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 190, 202, 212)),
                  ),
                  Gap(44),
                  Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 100.0,
                  ),
                  Text(
                    "Enter your credentials to login",
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Gap(16),
                  CostumeFormField(
                    validationType: ValidationType.email,
                    controller: logic.emailController,
                    hintText: "Enter your Email",
                    onChanged: () {
                      setState(() {});
                    },
                    labelText: "Email",
                  ),
                  Gap(16),
                  CostumeFormField(
                    validationType: ValidationType.password,
                    controller: logic.passwordController,
                    hintText: "Enter your Password",
                    labelText: "Password",
                    onChanged: () {
                      setState(() {});
                    },
                  ),
                  Gap(6),
                  Row(
                    children: [
                      const Spacer(),
                      InkWell(
                          onTap: () {
                            print("forget password clicked");
                          },
                          child: Text(
                            "Forget password?",
                            style: TextStyle(color: Colors.red),
                          ))
                    ],
                  ),
                  Gap(40),
                  CostumeButtons.common(
                    labelText: 'Login',
                    onPressed: logic.validateFields()
                        ? () async {
                            // Ensure that login logic runs only if the fields are validated
                            await logic.login();
                          }
                        : null, // Disable button if validation fails
                    isEnabled: logic.validateFields(),
                  ),
                  Gap(20),
                  CostumeButtons.blueBorder(
                    labelText: 'Signup',
                    onPressed: () {
                      Get.to(() =>
                          const RegisterPage()); // Navigate to RegisterPage
                    },
                    isEnabled: true, // or based on your logic
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
