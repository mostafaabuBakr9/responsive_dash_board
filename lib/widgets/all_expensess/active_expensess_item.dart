import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expensess/all_expensess_item_header.dart';

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.allExpensessItemModel,
  });

  final AllExpensessItemModel allExpensessItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: const Color(0xFF4DB7F2),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xFF4DB7F2),
            ),
            borderRadius: BorderRadius.circular(12),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            imageBackground: const Color.fromRGBO(0, 0, 0, 1)
                .withOpacity(0.10000000149011612),
            imageColor: Colors.white,
            arrowColor: Colors.white,
            image: allExpensessItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensessItemModel.title,
                style: AppStyles.styleMedium16(context)
                    .copyWith(color: Colors.white)),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensessItemModel.date,
                style: AppStyles.styleRegular14(context)
                    .copyWith(color: const Color(0xFFFAFAFA))),
          ),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensessItemModel.price,
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
