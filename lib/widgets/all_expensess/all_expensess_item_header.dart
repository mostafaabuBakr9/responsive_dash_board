import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader(
      {super.key,
      required this.image,
      this.imageBackground,
      this.imageColor,
      this.arrowColor});
  final String image;
  final Color? imageBackground;
  final Color? imageColor;
  final Color? arrowColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: imageBackground ?? const Color(0xFFFAFAFA),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imageColor ?? Color(0xFF4DB7F2), BlendMode.srcIn),
          ),
        ),
        Transform.rotate(
            angle: -1.57079633 * 2,
            child: Icon(Icons.arrow_back_ios_new_rounded,
                color: arrowColor ?? Color.fromRGBO(0, 0, 0, 1)))
      ],
    );
  }
}
