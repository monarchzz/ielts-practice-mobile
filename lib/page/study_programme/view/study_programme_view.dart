import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/common/extension.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/enum/study_programme_type.dart';
import 'package:ielts_practice_mobile/model/study_programme.dart';
import 'package:ielts_practice_mobile/page/study_programme/bloc/study_programme_bloc.dart';

class StudyProgrammeView extends StatelessWidget {
  const StudyProgrammeView({super.key});

  void _handleActiveProgrammeCardTap(
    BuildContext context,
    StudyProgramme studyProgramme,
  ) {}

  void _handleNewProgrammeCardTap(BuildContext context) {}

  void _handleReplayButton(
    BuildContext context,
    StudyProgramme studyProgramme,
  ) {}

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<StudyProgrammeBloc, StudyProgrammeState>(
      builder: (context, state) {
        final studyProgrammes = state.studyProgrammes;
        final first = studyProgrammes.isNotEmpty ? studyProgrammes.first : null;

        final activeProgrammeCard = first == null
            ? Container()
            : Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () => _handleActiveProgrammeCardTap(context, first),
                  child: Container(
                    height: 230,
                    padding: const EdgeInsets.all(AppSize.s6),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: LinearProgressIndicator(
                                      value: 0.3,
                                      backgroundColor:
                                          AppColor.purple.withOpacity(0.1),
                                      color: AppColor.purple,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '30%',
                                    style: AppTextStyle.p10.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: AppSize.s4,
                        ),
                        Container(
                          padding: const EdgeInsets.all(AppSize.s5),
                          decoration: BoxDecoration(
                            color: first.type.getColor(),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: Image(
                              image: AssetImage(first.type.getImageUrl()),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: AppSize.s4,
                        ),
                        Text(
                          l10n.activeStudyProgramme,
                          style: AppTextStyle.j18b,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: AppSize.s4,
                        ),
                        Text(
                          first.type.getText(),
                          style: AppTextStyle.j12,
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              l10n.continueTitle,
                              style: AppTextStyle.j14,
                            ),
                            const SizedBox(
                              width: AppSize.s4,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: AppColor.orange,
                              size: 16,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );

        final newProgrammerCard = Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(
            onTap: () => _handleNewProgrammeCardTap(context),
            child: Container(
              height: 230,
              padding: const EdgeInsets.all(AppSize.s6),
              child: Column(
                children: [
                  const SizedBox(
                    height: AppSize.s4,
                  ),
                  Container(
                    padding: const EdgeInsets.all(AppSize.s5),
                    decoration: BoxDecoration(
                      color: const Color(0xffb49de0),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const SizedBox(
                      height: 40,
                      width: 40,
                      child: Image(
                        image: AssetImage('assets/new.webp'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.s4,
                  ),
                  Text(
                    l10n.newStudyProgrammeTitle,
                    style: AppTextStyle.j18b,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: AppSize.s4,
                  ),
                  Text(
                    l10n.newStudyProgrammeDescription,
                    style: AppTextStyle.j12,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        l10n.newStudyProgramme,
                        style: AppTextStyle.j14,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        width: AppSize.s4,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: AppColor.orange,
                        size: 16,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );

        final divider = Row(
          children: [
            const Expanded(child: Divider()),
            Padding(
              padding: const EdgeInsets.all(AppSize.s4),
              child: Text(
                l10n.allStudyProgramme,
                style: AppTextStyle.s16,
              ),
            ),
            const Expanded(child: Divider())
          ],
        );

        final allProgrammesCard = Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppSize.s6),
            child: Column(
              children: [
                for (var i = 0; i < studyProgrammes.length; i++)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: AppSize.s4),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(AppSize.s5),
                              decoration: BoxDecoration(
                                color: studyProgrammes[i].type.getColor(),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: SizedBox(
                                height: 20,
                                width: 20,
                                child: Image(
                                  image: AssetImage(
                                    studyProgrammes[i].type.getImageUrl(),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: AppSize.s6,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: context.screenWidth / 5 * 2,
                                  child: Text(
                                    studyProgrammes[i].name,
                                    style: AppTextStyle.j14,
                                  ),
                                ),
                                const SizedBox(
                                  height: AppSize.s4,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: LinearProgressIndicator(
                                              value: 0.3,
                                              backgroundColor: AppColor.purple
                                                  .withOpacity(0.1),
                                              color: AppColor.purple,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '30%',
                                            style: AppTextStyle.p10.copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            OutlinedButton(
                              onPressed: () => _handleReplayButton(
                                context,
                                studyProgrammes[i],
                              ),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: AppColor.orange,
                                side: const BorderSide(
                                  color: AppColor.orange,
                                ),
                              ),
                              child: Text(
                                l10n.replay,
                                style: const TextStyle(
                                  color: AppColor.orange,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      if (i != studyProgrammes.length - 1) const Divider(),
                    ],
                  )
              ],
            ),
          ),
        );

        return SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 180,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.s6,
                  vertical: AppSize.s8,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xfff1eef5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.studyProgrammeTitle,
                      style: AppTextStyle.p24,
                    ),
                    const SizedBox(
                      height: AppSize.s4,
                    ),
                    Text(
                      l10n.studyProgrammeDescription,
                      style: AppTextStyle.p14,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.s4),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 130,
                    ),
                    Row(
                      children: [
                        if (first != null) Expanded(child: activeProgrammeCard),
                        Expanded(child: newProgrammerCard),
                      ],
                    ),
                    if (studyProgrammes.isNotEmpty) divider,
                    if (studyProgrammes.isNotEmpty) allProgrammesCard
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
