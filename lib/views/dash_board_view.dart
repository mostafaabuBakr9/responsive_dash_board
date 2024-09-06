import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobile: (context) => SizedBox(),
      tablet: (context) => SizedBox(),
      desktop: (context) => DashboardDesktopLayout(),
    );
  }
}
