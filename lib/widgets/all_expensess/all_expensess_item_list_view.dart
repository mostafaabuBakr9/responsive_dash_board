import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expensess/all_expensess_item.dart';

class AllExpensessItemListView extends StatefulWidget {
  const AllExpensessItemListView({super.key});

  @override
  State<AllExpensessItemListView> createState() =>
      _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
  int selectedindex = 0;
  final List<AllExpensessItemModel> items = [
    AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20.129'),
    AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20.129'),
    AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20.129'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateindex(0);
            },
            child: AllExpensessItem(
              isSelected: selectedindex == 0 ? true : false,
              allExpensessItemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateindex(1);
            },
            child: AllExpensessItem(
              isSelected: selectedindex == 1 ? true : false,
              allExpensessItemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateindex(2);
            },
            child: AllExpensessItem(
              isSelected: selectedindex == 2 ? true : false,
              allExpensessItemModel: items[2],
            ),
          ),
        )
      ],
    );
  }

  void updateindex(int index) {
    setState(() {
      selectedindex = index;
    });
  }
}
