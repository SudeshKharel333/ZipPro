import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/core/app_managers/assets_managers.dart';
import 'package:my_flutter_app/core/enums/validation_type.dart';
import 'package:my_flutter_app/routes/app_routes.dart';
import 'package:my_flutter_app/widgets/buttons.dart';
import 'package:my_flutter_app/widgets/input_fields.dart';
import 'package:my_flutter_app/screen/auth/register/register_logic.dart';

// import '../../../widgets/buttons.dart';
// import '../../../widgets/input_fields.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _passwordsMatch = true;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterLogic>(builder: (logic) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 167, 218, 242),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // ClipOval(
                  //   child: Image.asset(
                  //     AssetManager.Zippro,
                  //     width: 170,
                  //     height: 170,
                  //   ),
                  // ),
                  Icon(
                    Icons.person_outline_rounded,
                    size: 50.0, // Change the icon size here
                    color: Colors.red,
                  ),
                  Text(
                    "Enter your credentials to register",
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Gap(16),

                  CostumeFormField(
                    validationType: ValidationType.name,
                    hintText: "Enter FullName",
                    onChanged: () {
                      setState(() {});
                    },
                    labelText: "Name",
                  ),
                  Gap(16),

                  CostumeFormField(
                    validationType: ValidationType.phone,
                    hintText: "Enter PhoneNumber",
                    onChanged: () {
                      setState(() {});
                    },
                    labelText: "PhoneNumber",
                  ),
                  Gap(16),
                  CostumeFormField(
                    validationType: ValidationType.email,
                    controller: logic.emailController,
                    hintText: "Enter Email",
                    onChanged: () {
                      setState(() {});
                    },
                    labelText: "Email",
                  ),
                  Gap(16),
                  // Add this controller to hold the confirm password

                  Column(
                    children: [
                      // Existing Password Field

                      CostumeFormField(
                        validationType: ValidationType.password,
                        controller: logic.passwordController,
                        hintText: "Enter Password",
                        labelText: "Password",
                        onChanged: () {
                          setState(() {});
                        },
                      ),
                      Gap(16),

                      // New Confirm Password Field
                      CostumeFormField(
                        validationType: ValidationType.password,
                        controller: logic.confirmPasswordController,
                        hintText: "Confirm Password",
                        labelText: "Confirm Password",
                        onChanged: () {
                          setState(() {
                            // Perform manual validation
                            if (logic.confirmPasswordController.text !=
                                logic.passwordController.text) {
                              _passwordsMatch = false;
                            } else {
                              _passwordsMatch = true;
                            }
                          });
                        },
                      ),

                      // Display error message if passwords do not match
                      if (!_passwordsMatch)
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Passwords do not match',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                    ],
                  ),

                  Gap(20),
                  CostumeButtons.blueBorder(
                    labelText: 'Signup',
                    onPressed: () {},
                    isEnabled: false,
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
