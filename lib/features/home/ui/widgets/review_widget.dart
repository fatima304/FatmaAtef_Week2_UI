import 'package:animation_app/core/constant/app_images.dart';
import 'package:animation_app/core/constant/app_text_style.dart';
import 'package:animation_app/features/home/data/models/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key, required this.movie});

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 12,
      left: 120,
      child: Container(
        height: 18,
        width: 41,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            SvgPicture.asset(Assets.review),
            const SizedBox(width: 4),
            Text(
              movie.rating.toStringAsFixed(1),
              style: AppTextStyle.font12DarkBlueSemiBold,
            ),
          ],
        ),
      ),
    );
  }
}
