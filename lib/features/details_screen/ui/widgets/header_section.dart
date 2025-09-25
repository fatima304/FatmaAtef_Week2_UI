import 'package:animation_app/features/home/data/models/movie_model.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.movie});

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          movie.imagePath,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Positioned(
          bottom: -150 / 2,
          left: 0,
          right: 0,
          child: Center(
            child: ClipOval(
              child: Image.asset(
                'assets/images/logo.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
