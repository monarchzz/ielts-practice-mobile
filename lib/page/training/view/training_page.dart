import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/model/enum/training_type.dart';
import 'package:ielts_practice_mobile/page/training/bloc/training_bloc.dart';
import 'package:ielts_practice_mobile/page/training/view/training_view.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final type = ModalRoute.of(context)!.settings.arguments as TrainingType?;

    if (type == null) return const Scaffold();
    return BlocProvider.value(
      value: TrainingBloc()
        ..add(
          TrainingEvent.started(type: type),
        ),
      child: const TrainingView(),
    );
  }
}
