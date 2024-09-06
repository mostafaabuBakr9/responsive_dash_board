// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    Key? key,
    required this.drawerItemModel,
    required this.isActive,
  }) : super(key: key);
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : inActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

class inActiveDrawerItem extends StatelessWidget {
  const inActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleRegular16,
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleSemiBold16,
      ),
      trailing: Container(
        width: 3.27,
        decoration: BoxDecoration(
          color: const Color(0xFF4EB7F2),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
