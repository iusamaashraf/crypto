import 'package:crypto/constants/colors.dart';
import 'package:crypto/constants/icons.dart';
import 'package:crypto/views/pages/auth/forgot/forgot_page.dart';
import 'package:crypto/views/pages/auth/register/register_page.dart';
import 'package:crypto/views/widgets/common_field.dart';
import 'package:crypto/views/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../bottom_nav/bottom_nav_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass.primaryColor,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                IconClass.logo,
                height: Get.height * 0.1,
              ),
              SizedBox(height: Get.height * 0.03),
              Text(
                'Login here to\nContinue',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(
                height: Get.height * 0.1,
              ),
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
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () => Get.to(() => ForgotPage()),
                  child: Text(
                    'Forgot Password?',
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
              PrimaryButton(
                onTap: () => Get.offAll(() => const BottomNavPage()),
                title: 'Login',
              ),
              SizedBox(height: Get.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\t have an account? ',
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => RegisterPage()),
                    child: Text(
                      'Register',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
