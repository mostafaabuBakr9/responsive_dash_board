// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(
          image,
        ),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          subtitle,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
