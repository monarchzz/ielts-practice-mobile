import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';

class PasswordItem extends StatefulWidget {
  const PasswordItem({
    super.key,
    required this.text,
    required this.hintText,
    required this.onChanged,
    required this.validator,
  });

  final String text;
  final String hintText;
  final String? Function(String? value) validator;
  final void Function(String value) onChanged;

  @override
  State<PasswordItem> createState() => _PasswordItemState();
}

class _PasswordItemState extends State<PasswordItem> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s6),
      child: TextFormField(
        validator: widget.validator,
        initialValue: widget.text,
        onChanged: widget.onChanged,
        style: AppTextStyle.j14,
        obscureText: obscureText,
        maxLength: 20,
        decoration: InputDecoration(
          label: Text(
            widget.hintText,
            style: AppTextStyle.j14,
          ),
          suffixIcon: IconButton(
            onPressed: _handleSuffixIcon,
            icon: Icon(
              obscureText ? Icons.visibility : Icons.visibility_off,
              size: AppSize.s6,
            ),
          ),
        ),
      ),
    );
  }

  void _handleSuffixIcon() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}
