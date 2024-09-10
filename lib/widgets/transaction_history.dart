import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
           Text(
            'Transaction History',
            style: AppStyles.styleSemiBold20(context),
          ),
          Text(
            'See all',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: const Color(0xFF4DB7F2)),
          )
        ]),
        const SizedBox(
          height: 20,
        ),
         Text('13 April 2022', style: AppStyles.styleRegular16(context)),
      ],
    );
  }
}
