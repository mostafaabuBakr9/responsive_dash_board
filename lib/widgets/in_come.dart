import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/Income_details.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_header.dart';

class InCome extends StatelessWidget {
  const InCome({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        paddingvalue: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IncomeHeader(),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(flex: 1, child: IncomeChart()),
                Expanded(flex: 2, child: IncomeDetails()),
              ],
            )
          ],
        ));
  }
}
