import 'package:animation_app/core/widgets/bottom_navbar.dart';
import 'package:animation_app/features/details_screen/ui/screens/details_page.dart';
import 'package:animation_app/features/home/data/models/movie_model.dart';
import 'package:animation_app/features/home/ui/screens/home_page.dart';
import 'package:animation_app/features/upgrade_screen/ui/screens/upgrade_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String bottomBar = 'bottom';
  static const String home = '/home';
  static const String details = '/details';
  static const String upgrade = '/upgrade';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case bottomBar:
        return MaterialPageRoute(builder: (_) => BottomNavBar());
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());

      case details:
        final movie = settings.arguments as MovieModel;
        return MaterialPageRoute(builder: (_) => DetailsPage(movie: movie));

      case upgrade:
        return MaterialPageRoute(builder: (_) => const UpgradePage());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
