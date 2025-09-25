import 'package:animation_app/core/constant/app_color.dart';
import 'package:animation_app/core/constant/app_images.dart';
import 'package:animation_app/features/details_screen/ui/widgets/count_widget.dart';
import 'package:flutter/material.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21.0),
          child: Divider(color: AppColors.grey.withOpacity(0.5), thickness: 1),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              countWidget(icon: Assets.watch, count: '2.3M', text: 'views'),
              countWidget(icon: Assets.clapping, count: '2K', text: 'clap'),
              countWidget(icon: Assets.season, count: '4', text: 'seasons'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21.0),
          child: Divider(color: AppColors.grey.withOpacity(0.5), thickness: 1),
        ),
      ],
    );
  }
}
