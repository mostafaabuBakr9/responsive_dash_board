import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess/all_expensess.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/quick_invoice.dart';

class middelSection extends StatelessWidget {
  const middelSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpensess(),
        SizedBox(height: 24),
        QuickInvoice(),
        SizedBox(
          height: 40,
        )
      ],
    );
  }
}
