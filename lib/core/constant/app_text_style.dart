import 'package:animation_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static const TextStyle font24DarkBlueBold = TextStyle(
    fontSize: 24,
    fontFamily: 'Raleway',
    color: AppColors.darkBlue,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle font12DarkBlueSemiBold = TextStyle(
    fontSize: 12,    fontFamily: 'Raleway',

    color: AppColors.black,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle font17WhiteMedium = TextStyle(
    fontSize: 17,    fontFamily: 'Raleway',

    color: AppColors.white,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle font14LightGreyMedium = TextStyle(
    fontSize: 14,
    fontFamily: 'Raleway',
    color: AppColors.lightGrey,
    fontWeight: FontWeight.w500,
  );
}
