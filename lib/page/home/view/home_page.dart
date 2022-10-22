import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/widget/page_container.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return SafeArea(
      child: Scaffold(
        body: PageContainer(
          child: Column(
            children: [
              Text(l10n.hello('Home')),
            ],
          ),
        ),
      ),
    );
  }
}
