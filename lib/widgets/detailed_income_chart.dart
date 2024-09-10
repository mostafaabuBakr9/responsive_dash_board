import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
        child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
          activeIndex =
              pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.0 : null,
          title: activeIndex == 0 ? 'Design service' : '40%',
          value: 40,
          titleStyle: AppStyles.styleRegular14(context)
              .copyWith(color: activeIndex == 0 ? Colors.black : Colors.white),
          radius: activeIndex == 0 ? 60 : 50,
          color: const Color(0xFF208BC7),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 1.0 : null,
          title: activeIndex == 1 ? 'Design product' : '25%',
          value: 25,
          titleStyle: AppStyles.styleRegular14(context)
              .copyWith(color: activeIndex == 1 ? Colors.black : Colors.white),
          radius: activeIndex == 1 ? 60 : 50,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.0 : null,
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          value: 20,
          titleStyle: AppStyles.styleRegular14(context)
              .copyWith(color: activeIndex == 2 ? Colors.black : Colors.white),
          radius: activeIndex == 2 ? 60 : 50,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.0 : null,
          title: activeIndex == 3 ? 'Other' : '22%',
          value: 22,
          titleStyle: AppStyles.styleRegular14(context)
              .copyWith(color: activeIndex == 3 ? Colors.black : Colors.white),
          radius: activeIndex == 3 ? 60 : 50,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
