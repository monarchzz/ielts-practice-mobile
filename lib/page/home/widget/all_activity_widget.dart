import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:intl/intl.dart';

class AllActivityWidget extends StatelessWidget {
  const AllActivityWidget({
    super.key,
    required this.range,
    required this.onSelectDate,
  });

  final DateTimeRange range;
  final VoidCallback onSelectDate;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final start = DateFormat.yMd(Intl.getCurrentLocale()).format(range.start);
    final end = DateFormat.yMd(Intl.getCurrentLocale()).format(range.end);

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.s4,
          vertical: AppSize.s6,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () async {
                    await showDateRangePicker(
                      context: context,
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now(),
                      initialDateRange: range,
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: AppSize.s2,
                      horizontal: AppSize.s6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xfffcf0e8),
                      borderRadius: BorderRadius.circular(AppSize.s4),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.date_range_outlined,
                          color: AppColor.orange.withOpacity(0.8),
                          size: 20,
                        ),
                        const SizedBox(
                          width: AppSize.s4,
                        ),
                        Text(
                          '$start - $end',
                          style: TextStyle(
                            color: AppColor.orange.withOpacity(0.8),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: AppSize.s4,
                        ),
                        Icon(
                          Icons.expand_more_outlined,
                          color: AppColor.orange.withOpacity(0.8),
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.s4,
            ),
            Row(
              children: [
                Expanded(child: textBox(l10n.totalTime, '00h14')),
              ],
            ),
            const SizedBox(
              height: AppSize.s4,
            ),
            Row(
              children: [
                Expanded(
                  child: textBox(l10n.activities, '14'),
                ),
                const SizedBox(
                  width: AppSize.s4,
                ),
                Expanded(
                  child: textBox(l10n.average, '01 m/day'),
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: LineChart(
                sampleData2,
                swapAnimationDuration: const Duration(milliseconds: 250),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container textBox(String title, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppSize.s2,
        horizontal: AppSize.s6,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s4),
        border: Border.all(color: AppColor.gainsboro),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: AppColor.silver,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: AppSize.s2,
          ),
          Text(
            value,
            style: const TextStyle(
              color: AppColor.primary,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }

  LineChartData get sampleData2 => LineChartData(
        lineTouchData: lineTouchData2,
        gridData: gridData,
        titlesData: titlesData2,
        borderData: borderData,
        lineBarsData: lineBarsData2,
        minX: 1,
        maxX: 13,
        maxY: 6,
        minY: 0,
      );
  List<LineChartBarData> get lineBarsData2 => [
        lineChartBarData2_2,
      ];

  LineChartBarData get lineChartBarData2_2 => LineChartBarData(
        isCurved: true,
        color: const Color(0xFFc7a9de),
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(
          show: true,
          color: const Color(0xffebe3f1),
        ),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 2.8),
          FlSpot(7, 1.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
        ],
      );

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(
            color: Color(0xff4e4965),
            width: 2,
          ),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      );

  LineTouchData get lineTouchData2 => LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: const Color(0xFFEEEEEE),
        ),
        handleBuiltInTouches: true,
      );
  FlGridData get gridData => FlGridData(show: false);

  FlTitlesData get titlesData2 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles,
        ),
      );

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  SideTitles get leftTitles => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 40,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 1:
        text = DateFormat.Md(Intl.getCurrentLocale()).format(DateTime.now());
        break;

      case 3:
        text = DateFormat.Md(Intl.getCurrentLocale())
            .format(DateTime.now().add(const Duration(days: 2)));
        break;

      case 7:
        text = DateFormat.Md(Intl.getCurrentLocale())
            .format(DateTime.now().add(const Duration(days: 5)));
        break;
      case 12:
        text = DateFormat.Md(Intl.getCurrentLocale())
            .format(DateTime.now().add(const Duration(days: 10)));
        break;
      default:
        text = '';
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: Text(
        text,
        style: const TextStyle(
          color: AppColor.dimGray,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0m';
        break;
      case 1:
        text = '1m';
        break;
      case 2:
        text = '2m';
        break;
      case 3:
        text = '3m';
        break;
      case 4:
        text = '4m';
        break;
      case 5:
        text = '5m';
        break;
      default:
        return Container();
    }

    return Text(
      text,
      style: const TextStyle(
        color: AppColor.dimGray,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}
