import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/mycard_section.dart';
import 'package:responsive_dash_board/widgets/transaction_history.dart';
import 'package:responsive_dash_board/widgets/transaction_history_listview.dart';

class MycardTransactionHistorySection extends StatelessWidget {
  const MycardTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: CustomBackgroundContainer(
          paddingvalue: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MycardSection(),
              Divider(
                height: 40,
                color: Color(0xFFF1F1F1),
              ),
              TransactionHistory(),
              SizedBox(
                height: 16,
              ),
              TransactionHistoryListview(),
            ],
          )),
    );
  }
}
