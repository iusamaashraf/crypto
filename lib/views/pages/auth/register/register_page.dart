import 'package:crypto/constants/colors.dart';
import 'package:crypto/constants/icons.dart';
import 'package:crypto/views/widgets/common_field.dart';
import 'package:crypto/views/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass.primaryColor,
      appBar: AppBar(backgroundColor: ColorClass.secondaryColor),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Padding(
            padding: EdgeInsets.only(top: Get.height * 0.05),
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    IconClass.logo,
                    height: Get.height * 0.1,
                  ),
                  SizedBox(height: Get.height * 0.03),
                  Text(
                    'Register here to\nContinue',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(
                    height: Get.height * 0.1,
                  ),
                  CommonField(
                    hintText: 'Full Name',
                    controller: nameController,
                    prefixIcon: Icons.person,
                    onChanged: (val) {},
                    validator: (value) {
                      return 'null';
                    },
                  ),
                  SizedBox(height: Get.height * 0.03),
                  CommonField(
                    hintText: 'Phone Number',
                    controller: phoneController,
                    prefixIcon: Icons.phone,
                    onChanged: (val) {},
                    validator: (value) {
                      return 'null';
                    },
                  ),
                  SizedBox(height: Get.height * 0.03),
                  CommonField(
                    hintText: 'Email',
                    controller: emailController,
                    prefixIcon: Icons.email,
                    onChanged: (val) {},
                    validator: (value) {
                      return 'null';
                    },
                  ),
                  SizedBox(height: Get.height * 0.03),
                  CommonField(
                    hintText: 'Password',
                    controller: passwordController,
                    prefixIcon: Icons.lock_open_rounded,
                    onChanged: (val) {},
                    isObscure: true,
                    validator: (value) {
                      return 'null';
                    },
                  ),
                  SizedBox(height: Get.height * 0.03),
                  PrimaryButton(
                    onTap: () {},
                    title: 'Register',
                  ),
                  SizedBox(height: Get.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: Text(
                          'Login',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
