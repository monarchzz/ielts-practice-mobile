import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_stype.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Error',
            style: AppTextStyle.j18,
          ),
          const SizedBox(
            height: AppSize.s4,
          ),
          Text(message ?? 'Oops, something went wrong. Please try again later.')
        ],
      ),
    );
  }
}
