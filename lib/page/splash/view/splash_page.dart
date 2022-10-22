import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/widget/page_container.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PageContainer(child: Center(child: CircularProgressIndicator())),
    );
  }
}
