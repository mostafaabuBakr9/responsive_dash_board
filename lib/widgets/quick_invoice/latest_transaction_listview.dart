import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/custom_drawer/user_info_list_tile.dart';

class LatestTransactionListview extends StatelessWidget {
  const LatestTransactionListview({super.key});
  static List<UserInfoModel> users = [
    const UserInfoModel(
      title: 'Mostafa Abu-Bakr',
      subtitle: "Mostafa@gmail.com",
      image: Assets.imagesAvatar3,
    ),
    const UserInfoModel(
      title: 'Mostafa Abu-Bakr',
      subtitle: "Mostafa@gmail.com",
      image: Assets.imagesAvatar3,
    ),
    const UserInfoModel(
      title: 'Mostafa Abu-Bakr',
      subtitle: "Mostafa@gmail.com",
      image: Assets.imagesAvatar3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: users
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
  }
}



    // SizedBox(
    //   height: 80,
    //   child: 
    //   ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: users.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(
    //           userInfoModel: users[index],
    //         ),
    //       );
    //     },
    //   ),
    // )