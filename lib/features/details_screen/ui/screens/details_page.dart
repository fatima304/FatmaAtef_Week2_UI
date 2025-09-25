import 'package:animation_app/core/constant/app_color.dart';
import 'package:animation_app/features/details_screen/ui/widgets/custom_container.dart';
import 'package:animation_app/features/details_screen/ui/widgets/desc_section.dart';
import 'package:animation_app/features/details_screen/ui/widgets/genre_section.dart';
import 'package:animation_app/features/details_screen/ui/widgets/header_section.dart';
import 'package:animation_app/features/details_screen/ui/widgets/states_section.dart';
import 'package:animation_app/features/home/data/models/movie_model.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.movie});

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),

          // Content
          CustomScrollView(
            slivers: [
              buildSliverAppBar(context),
              SliverList(
                delegate: SliverChildListDelegate([
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HeaderSection(movie: movie),
                      const SizedBox(height: 86),
                      const GenreSection(),
                      const SizedBox(height: 23),
                      const StatsSection(),
                      DescriptionSection(description: movie.desc),
                      const SizedBox(height: 300),
                    ],
                  ),
                ]),
              ),
            ],
          ),

          // Bottom Actions
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.6)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomContainer(
                    type: 'Preview',
                    icon: 'assets/icons/preview.svg',
                    backgroundColor: AppColors.purple,
                  ),
                  CustomContainer(
                    type: 'Watch now',
                    icon: 'assets/icons/watch.svg',
                    backgroundColor: AppColors.lightPurple,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildSliverAppBar(BuildContext context) {
  return SliverAppBar(
    expandedHeight: 20,
    stretch: true,
    pinned: true,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
    backgroundColor: Colors.transparent,
    flexibleSpace: FlexibleSpaceBar(centerTitle: true),
  );
}
