import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/page/home/widget/day_steak_widget.dart';

class YourRecentActivity extends StatelessWidget {
  const YourRecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    final l10 = context.l10n;

    return Row(
      children: [
        Card(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: AppSize.s4,
              horizontal: AppSize.s6,
            ),
            height: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10.averageSession,
                  style: const TextStyle(
                    color: AppColor.silver,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: AppSize.s6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: const [
                    Text(
                      '2',
                      style: TextStyle(
                        color: AppColor.primary,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: AppSize.s3,
                    ),
                    Text(
                      'min of activity',
                      style: TextStyle(
                        color: AppColor.primary,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: AppSize.s2,
        ),
        Expanded(
          child: Card(
            child: Container(
              height: 90,
              padding: const EdgeInsets.all(AppSize.s5),
              child: Row(
                children: [
                  const Image(image: AssetImage('assets/man.png')),
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            l10.daySteak('10'),
                            style: const TextStyle(
                              color: AppColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: AppSize.s4,
                          ),
                          const DaySteakWidget()
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
