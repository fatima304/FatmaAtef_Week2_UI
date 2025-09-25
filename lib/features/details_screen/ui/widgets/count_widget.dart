import 'package:animation_app/core/constant/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget countWidget({
  required String icon,
  required String count,
  required String text,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12),
    child: Row(
      spacing: 7,
      children: [
        SvgPicture.asset(icon),
        Text('$count $text', style: AppTextStyle.font17WhiteMedium),
      ],
    ),
  );
}
