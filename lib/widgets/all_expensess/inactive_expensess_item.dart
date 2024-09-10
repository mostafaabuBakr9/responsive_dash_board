import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expensess/all_expensess_item_header.dart';

class inActiveAllExpensessItem extends StatelessWidget {
  const inActiveAllExpensessItem({
    super.key,
    required this.allExpensessItemModel,
  });

  final AllExpensessItemModel allExpensessItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
        side: const BorderSide(
          width: 1,
          color: Color(0xFFF1F1F1),
        ),
        borderRadius: BorderRadius.circular(12),
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: allExpensessItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(allExpensessItemModel.title, style: AppStyles.styleMedium16),
          const SizedBox(height: 8),
          Text(allExpensessItemModel.date, style: AppStyles.styleRegular14),
          const SizedBox(height: 16),
          Text(allExpensessItemModel.price, style: AppStyles.styleSemiBold24),
        ],
      ),
    );
  }
}
