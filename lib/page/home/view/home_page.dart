import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/page/home/bloc/home_bloc.dart';
import 'package:ielts_practice_mobile/page/home/view/home_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: HomeBloc()..add(const HomeEvent.started()),
      child: const HomeView(),
    );
  }
}
