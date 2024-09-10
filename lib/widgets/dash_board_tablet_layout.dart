import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/in_come.dart';
import 'package:responsive_dash_board/widgets/middel_section.dart';
import 'package:responsive_dash_board/widgets/mycard_transaction_history.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(
          width: 20,
        ),
        Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: middelSection(),
                  ),
                  MycardTransactionHistorySection(),
                  SizedBox(
                    height: 24,
                  ),
                  InCome(),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            )),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
