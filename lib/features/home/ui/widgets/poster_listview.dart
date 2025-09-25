import 'package:animation_app/features/home/data/models/movie_model.dart';
import 'package:animation_app/features/home/ui/widgets/poster_card.dart';
import 'package:flutter/material.dart';

class PosterCardListview extends StatelessWidget {
  const PosterCardListview({super.key, required this.movies});

  final List<MovieModel> movies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        padding: EdgeInsets.only(right: 8),
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return PosterCard(movie: movies[index]);
        },
      ),
    );
  }
}
