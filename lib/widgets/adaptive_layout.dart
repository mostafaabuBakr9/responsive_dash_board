import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});
  final WidgetBuilder mobile;
  final WidgetBuilder tablet;
  final WidgetBuilder desktop;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print('maxWidth: ${constraints.maxWidth.toString()}');

        if (constraints.maxWidth < 600) {
          return mobile(context);
        } else if (constraints.maxWidth < 1000) {
          return tablet(context);
        } else {
          return desktop(context);
        }
      },
    );
  }
}
