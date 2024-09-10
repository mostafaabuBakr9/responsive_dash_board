import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

class TransactionHistoryListview extends StatelessWidget {
  const TransactionHistoryListview({super.key});

  static List<TransactionModel> transactions = [
    TransactionModel(
        title: 'Cash Withdrawal',
        amount: r'$20,129',
        date: '13 Apr, 2022 ',
        isWithdrawal: true),
    TransactionModel(
        title: 'Landing Page project',
        amount: r'$2,000',
        date: '13 Apr, 2022 at 3:30 PM',
        isWithdrawal: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        amount: r'$20,129',
        date: '13 Apr, 2022 at 3:30 PM',
        isWithdrawal: false)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return TransactionItem(transactionModel: transactions[index]);
      },
    );
  }
}
