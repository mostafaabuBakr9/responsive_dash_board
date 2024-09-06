import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(Assets.imagesAvatar1,),
    );
  }
}
