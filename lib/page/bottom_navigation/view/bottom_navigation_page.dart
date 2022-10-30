import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/page/bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:ielts_practice_mobile/page/bottom_navigation/view/bottom_navigation_view.dart';

class BottomNavigationPage extends StatelessWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BottomNavigationBloc()..add(const BottomNavigationEvent.started()),
      child: BottomNavigationView(),
    );
  }
}
