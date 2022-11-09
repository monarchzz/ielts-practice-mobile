import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/common/widget/failure_widget.dart';
import 'package:ielts_practice_mobile/common/widget/loading_widget.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/enum/training_type.dart';
import 'package:ielts_practice_mobile/model/training.dart';
import 'package:ielts_practice_mobile/page/training/bloc/training_bloc.dart';
import 'package:ielts_practice_mobile/page/training/widget/training_item_widget.dart';

class TrainingView extends StatelessWidget {
  const TrainingView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<TrainingBloc, TrainingState>(
      builder: (context, state) {
        final type = state.mapOrNull(
          success: (value) => value.type,
        );

        Widget successWidget(TrainingType type, List<Training> trainings) {
          return Container(
            padding: const EdgeInsets.all(AppSize.s4),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return TrainingItemWidget(training: trainings[index]);
              },
              itemCount: trainings.length,
              separatorBuilder: (context, index) => const Divider(thickness: 1),
            ),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: Text(
              type == null ? 'Training' : type.getText(l10n),
              style: AppTextStyle.j18,
            ),
            backgroundColor: AppColor.white,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
              color: Colors.black,
            ),
          ),
          backgroundColor: AppColor.background,
          body: state.map(
            initial: (_) => const LoadingWidget(),
            loading: (_) => const LoadingWidget(),
            success: (value) => successWidget(value.type, value.trainings),
            failure: (value) => FailureWidget(
              message: value.message,
            ),
          ),
        );
      },
    );
  }
}
