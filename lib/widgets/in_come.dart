import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/in_come_section_body.dart';
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
          children: [IncomeHeader(), SizedBox(height: 10), IncomeSectionBody()],
        ));
  }
}
