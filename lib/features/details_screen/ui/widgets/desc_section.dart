import 'package:animation_app/core/constant/app_text_style.dart';
import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0),
      child: Text(
        description,
        style: AppTextStyle.font17WhiteMedium,
      ),
    );
  }
}
