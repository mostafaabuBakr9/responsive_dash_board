import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_detailed_model.dart';
import 'package:responsive_dash_board/widgets/Item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static List<ItemDetailedModel> itemDetailedModels = [
    ItemDetailedModel(
      title: 'Design service',
      value: '40%',
      color: const Color(0xFF208CC8),
    ),
    ItemDetailedModel(
      title: 'Design product',
      value: '25%',
      color: const Color(0xFF4EB7F2),
    ),
    ItemDetailedModel(
      title: 'Product royalti',
      value: '20%',
      color: const Color(0xFF064061),
    ),
    ItemDetailedModel(
      title: 'Other',
      value: '22%',
      color: const Color(0xFFE2DECD),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: itemDetailedModels
          .map((e) => ItemDetails(itemDetailedModel: e))
          .toList(),
    );
  }
}
