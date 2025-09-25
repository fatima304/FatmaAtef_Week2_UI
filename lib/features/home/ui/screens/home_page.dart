import 'package:animation_app/core/constant/app_images.dart';
import 'package:animation_app/features/home/ui/widgets/character_listview.dart';
import 'package:animation_app/features/home/ui/widgets/poster_listview.dart';
import 'package:animation_app/features/home/ui/widgets/tabbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_text_style.dart';
import '../../data/models/movie_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final selectedTab = tabs[selectedIndex];
    final movies = moviesByTab[selectedTab] ?? [];

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          Positioned(
            right: -150,
            top: -70,
            child: SvgPicture.asset(Assets.bigStar, width: 400, height: 400),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Where Anime Comes Alive',
                      style: AppTextStyle.font24DarkBlueBold,
                    ),
                    const SizedBox(height: 24),

                    CustomTabBar(
                      tabs: tabs,
                      onTabSelected: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),

                    const SizedBox(height: 20),

                    PosterCardListview(movies: movies),
                    SizedBox(height: 24),
                    Text(
                      'Top Characters',
                      style: AppTextStyle.font24DarkBlueBold.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 24),
                    CharacterListView(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
