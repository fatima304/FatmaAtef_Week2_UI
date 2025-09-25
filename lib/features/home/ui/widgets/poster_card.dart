import 'package:animation_app/core/constant/app_router.dart';
import 'package:animation_app/features/home/ui/widgets/review_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_text_style.dart';
import '../../data/models/movie_model.dart';

class PosterCard extends StatelessWidget {
  final MovieModel movie;

  const PosterCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AppRouter.details, arguments: movie);
          },
          child: Container(
            width: 184,
            height: 245,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                Image.asset(
                  movie.imagePath,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),

                ReviewWidget(movie: movie),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          movie.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.font24DarkBlueBold.copyWith(fontSize: 14),
        ),
        const SizedBox(height: 4),
        Text(
          movie.genre,
          style: AppTextStyle.font12DarkBlueSemiBold.copyWith(
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}
