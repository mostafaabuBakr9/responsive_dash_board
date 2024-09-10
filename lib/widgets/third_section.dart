import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/in_come.dart';
import 'package:responsive_dash_board/widgets/mycard_transaction_history.dart';

class ThirdSection extends StatelessWidget {
  const ThirdSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 12,
        ),
        Expanded(child: MycardTransactionHistorySection()),
        SizedBox(
          height: 24,
        ),
        InCome(),
        SizedBox(
          height: 12,
        )
      ],
    );
  }
}
