import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item_list_view_builder.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserInfoListTile(
              title: 'Mostafa Abu-Bakr',
              subtitle: 'mostafaabubakr9@gmail.com',
              image: Assets.imagesAvatar3),
          const SizedBox(
            height: 8,
          ),
          DrawerItemListViewBuilder()
        ],
      ),
    );
  }
}
