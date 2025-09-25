import 'package:animation_app/core/constant/app_color.dart';
import 'package:animation_app/core/constant/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../data/models/character_model.dart';

class CharactersWidget extends StatelessWidget {
  final CharacterModel character;
  const CharactersWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipOval(
          child: Image.asset(
            character.imagePath,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          character.characterName,
          style: AppTextStyle.font24DarkBlueBold.copyWith(fontSize: 14),
        ),
        const SizedBox(height: 6),
        Text(
          character.movieTitle,
          style: AppTextStyle.font12DarkBlueSemiBold.copyWith(
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}
