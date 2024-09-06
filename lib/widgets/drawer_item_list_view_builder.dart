import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_item.dart';

class DrawerItemListViewBuilder extends StatefulWidget {
  const DrawerItemListViewBuilder({
    super.key,
  });

  @override
  State<DrawerItemListViewBuilder> createState() =>
      _DrawerItemListViewBuilderState();
}

class _DrawerItemListViewBuilderState extends State<DrawerItemListViewBuilder> {
  final List<DrawerItemModel> items = [
    DrawerItemModel(
      title: 'Dashboard',
      image: Assets.imagesDashboard,
    ),
    DrawerItemModel(
      title: 'My Transctions',
      image: Assets.imagesMyTransctions,
    ),
    DrawerItemModel(
      title: 'Statistics',
      image: Assets.imagesStatistics,
    ),
    DrawerItemModel(
      title: 'Wallet Account',
      image: Assets.imagesWalletAccount,
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: Assets.imagesMyInvestments,
    ),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CustomDrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
