import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    required this.paddingvalue,
  });
  final Widget child;
  final double paddingvalue;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(paddingvalue),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: child);
  }
}
