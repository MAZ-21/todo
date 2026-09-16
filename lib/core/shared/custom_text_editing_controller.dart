import 'package:flutter/material.dart';
import 'package:todo/core/styles/app_color.dart';
import 'package:todo/core/styles/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.inputType,
    required this.validator,
    this.isObsecure,
    this.onObsecurePressed,
    this.icon,
  });
  final String hintText;
  final TextEditingController controller;
  final TextInputType inputType;
  final Function validator;
  final bool? isObsecure;
  final VoidCallback? onObsecurePressed;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      obscureText: isObsecure ?? false,
      validator: (value) {
        return validator(value);
      },
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Styles.regular16(context),
        suffixIcon: icon != null
            ? IconButton(onPressed: onObsecurePressed, icon: icon!)
            : null,
        filled: true,
        hoverColor: AppColor.neutralBackgroundColor,
        focusColor: AppColor.neutralBackgroundColor.withOpacity(0.2),
        fillColor: AppColor.neutralBackgroundColor.withOpacity(0.0),

        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.neutralGhostColor.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
