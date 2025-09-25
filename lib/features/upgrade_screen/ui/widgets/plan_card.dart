import 'package:flutter/material.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_text_style.dart';
import '../../../../core/constant/app_images.dart';

class PlanCard extends StatelessWidget {
  final String duration;
  final String price;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  const PlanCard({
    super.key,
    required this.duration,
    required this.price,
    required this.subtitle,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 360,
        height: 100,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: selected ? AppColors.darkBlue : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Image.asset(Assets.subscribe),
            const SizedBox(width: 15),
            Expanded(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '$duration $price',
                      style: selected
                          ? AppTextStyle.font17WhiteMedium.copyWith(fontWeight: FontWeight.w700)
                          : AppTextStyle.font17WhiteMedium.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                    ),
                    TextSpan(
                      text: subtitle,
                      style: AppTextStyle.font14LightGreyMedium.copyWith(color: AppColors.grey),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 5),
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selected ? AppColors.lightPurple : Colors.white,
                border: Border.all(color: Colors.black26),
              ),
              child: selected ? const Icon(Icons.check, size: 18, color: Colors.black) : null,
            ),
          ],
        ),
      ),
    );
  }
}
