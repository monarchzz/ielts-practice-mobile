import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/common/widget/page_container.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/enum/training_session.dart';
import 'package:ielts_practice_mobile/page/home/bloc/home_bloc.dart';
import 'package:ielts_practice_mobile/page/home/widget/all_activity_widget.dart';
import 'package:ielts_practice_mobile/page/home/widget/training_widget.dart';
import 'package:ielts_practice_mobile/page/home/widget/your_recent_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final l10n = context.l10n;

        return SingleChildScrollView(
          child: Column(
            children: [
              // AppBarWidget(title: l10n.home),
              PageContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: AppSize.s4,
                    ),
                    Text(
                      l10n.welcome,
                      style: AppTextStyle.j24b,
                    ),
                    const SizedBox(
                      height: AppSize.s6,
                    ),
                    TrainingWidget(
                      trainingSession: TrainingSession.speaking,
                      onTap: (session) {},
                    ),
                    const SizedBox(
                      height: AppSize.s7,
                    ),
                    Text(
                      l10n.yourRecentActivity,
                      style: AppTextStyle.j18b,
                    ),
                    const SizedBox(
                      height: AppSize.s2,
                    ),
                    const YourRecentActivity(),
                    const SizedBox(
                      height: AppSize.s7,
                    ),
                    Text(
                      l10n.allYourActivity,
                      style: AppTextStyle.j18b,
                    ),
                    const SizedBox(
                      height: AppSize.s2,
                    ),
                    AllActivityWidget(
                      onSelectDate: () {},
                      range: DateTimeRange(
                        start: DateTime(2022, 10),
                        end: DateTime(2022, 10, 10),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
