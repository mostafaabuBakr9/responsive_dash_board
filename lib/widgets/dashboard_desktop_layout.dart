import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/custom_drawer/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/middel_section.dart';
import 'package:responsive_dash_board/widgets/third_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: middelSection(),
                      )),
                  SizedBox(
                    width: 32,
                  ),
                  Expanded(
                    flex: 1,
                    child: ThirdSection(),
                  ),
                ],
              ),
            )
          ]),
        )
      ],
    );
  }
}
