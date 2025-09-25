import 'package:flutter/material.dart';
import '../../../../core/constant/app_text_style.dart';
import '../../../../core/constant/app_images.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Upgrade Plan', style: AppTextStyle.font24DarkBlueBold),
        const SizedBox(height: 10),
        Image.asset(Assets.rocketBoy, width: 160, height: 160),
        const SizedBox(height: 4),
        Text(
          'Seamless Anime\nExperience, Ad-Free.',
          style: AppTextStyle.font24DarkBlueBold,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        Text(
          'Enjoy unlimited anime streaming without\n interruptions.',
          style: AppTextStyle.font14LightGreyMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
