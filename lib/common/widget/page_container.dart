import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s6),
        child: child,
      ),
    );
  }
}
