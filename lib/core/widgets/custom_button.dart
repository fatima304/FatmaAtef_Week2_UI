import 'package:flutter/material.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_text_style.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.lightPurple,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
        ),
        child: Text(
          'Continue',
          style: AppTextStyle.font17WhiteMedium.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
