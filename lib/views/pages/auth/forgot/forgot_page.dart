import 'package:crypto/constants/colors.dart';
import 'package:crypto/constants/icons.dart';
import 'package:crypto/views/widgets/common_field.dart';
import 'package:crypto/views/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPage extends StatelessWidget {
  ForgotPage({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorClass.secondaryColor,
      ),
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
                'Enter email here to\nRecover password!',
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
              PrimaryButton(
                onTap: () {},
                title: 'Submit',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
