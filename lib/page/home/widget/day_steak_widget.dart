import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';

class DaySteakWidget extends StatelessWidget {
  const DaySteakWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 100,
      child: Stack(
        children: [
          const Center(
            child: Divider(color: AppColor.silver, thickness: 1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              dot(
                value: '9',
                isActive: true,
              ),
              dot(
                value: '10',
                isActive: true,
              ),
              dot(
                value: '11',
                isActive: false,
              )
            ],
          )
        ],
      ),
    );
  }

  Container dot({required String value, required bool isActive}) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isActive ? const Color(0xFFc7a9de) : const Color(0xffe5e5e5),
      ),
      child: Center(
        child: Text(
          value,
          style: TextStyle(
            color: isActive ? AppColor.primary : AppColor.dimGray,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
