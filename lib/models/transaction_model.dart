class TransactionModel {
  final String title;
  final String amount;
  final String date;
  final bool isWithdrawal;

  TransactionModel(
      {required this.title,
      required this.amount,
      required this.date,
      required this.isWithdrawal});
}
