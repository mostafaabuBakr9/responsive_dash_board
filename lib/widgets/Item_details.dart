import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_detailed_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    super.key,
    required this.itemDetailedModel,
  });
  final ItemDetailedModel itemDetailedModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
            shape: const OvalBorder(), color: itemDetailedModel.color),
      ),
      title: Text(
        itemDetailedModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailedModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
