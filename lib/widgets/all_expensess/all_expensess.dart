import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess/all_expensess_header.dart';
import 'package:responsive_dash_board/widgets/all_expensess/all_expensess_item_list_view.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      paddingvalue: 20,
      child: Column(
        children: [
          AllExpensessHeader(),
          SizedBox(height: 16),
          AllExpensessItemListView(),
        ],
      ),
    );
  }
}
