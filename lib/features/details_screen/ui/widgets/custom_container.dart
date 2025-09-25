import 'package:animation_app/core/constant/app_color.dart';
import 'package:animation_app/core/constant/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.type,
    this.icon,
    this.backgroundColor,
  });

  final String type;
  final String? icon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      constraints: const BoxConstraints(minHeight: 38),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.purple,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            SvgPicture.asset(icon!, height: 20, width: 20),
            const SizedBox(width: 6),
          ],
          Text(type, style: AppTextStyle.font17WhiteMedium),
        ],
      ),
    );
  }
}
