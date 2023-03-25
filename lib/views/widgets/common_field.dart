// ignore: must_be_immutable
import 'package:crypto/constants/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CommonField extends StatelessWidget {
  CommonField({
    Key? key,
    required this.controller,
    this.isObscure = false,
    required this.onChanged,
    required this.validator,
    required this.prefixIcon,
    required this.hintText,
  }) : super(key: key);

  final TextEditingController controller;
  bool isObscure;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final IconData prefixIcon;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      obscureText: isObscure,
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: Colors.white,
          ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        prefixIcon: Icon(
          prefixIcon,
          color: Colors.white,
        ),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: Colors.white,
            ),
        // hintStyle: GoogleFonts.poppins(fontSize: 13),
        filled: true,
        fillColor: ColorClass.secondaryColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: ColorClass.primaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: ColorClass.primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: ColorClass.primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: ColorClass.primaryColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: ColorClass.primaryColor),
        ),
      ),
    );
  }
}
