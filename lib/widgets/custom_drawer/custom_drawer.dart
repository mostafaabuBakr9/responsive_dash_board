import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/custom_drawer/custom_drawer_item.dart';
import 'package:responsive_dash_board/widgets/custom_drawer/drawer_item_list_view_builder.dart';
import 'package:responsive_dash_board/widgets/custom_drawer/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 12,
          )),
          const SliverToBoxAdapter(
            child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                    title: 'Mostafa Abu-Bakr',
                    subtitle: 'mostafaabubakr9@gmail.com',
                    image: Assets.imagesAvatar3)),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemListViewBuilder(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                inActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: ' Settings System',
                        image: Assets.imagesSettings)),
                inActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: ' Logout account', image: Assets.imagesLogout)),
                const SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
