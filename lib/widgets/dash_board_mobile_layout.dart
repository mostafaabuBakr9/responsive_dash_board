import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/in_come.dart';
import 'package:responsive_dash_board/widgets/middel_section.dart';
import 'package:responsive_dash_board/widgets/mycard_transaction_history.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          middelSection(),
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
    );
  }
}
