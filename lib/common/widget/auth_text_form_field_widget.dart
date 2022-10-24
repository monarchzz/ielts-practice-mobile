import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';

class AuthTextFormFieldWidget extends StatelessWidget {
  const AuthTextFormFieldWidget({
    super.key,
    this.child,
    this.height,
    this.width,
    this.suffixIcon,
    this.prefixIcon,
    this.hintText,
    this.onSaved,
    this.validator,
    this.obscureText,
  });

  final Widget? child;
  final double? height;
  final double? width;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s4),
        ),
      ),
      onSaved: onSaved,
      validator: validator,
      obscureText: obscureText ?? false,
    );
  }
}
