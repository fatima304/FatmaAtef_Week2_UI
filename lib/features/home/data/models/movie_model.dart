import 'package:animation_app/core/constant/app_images.dart';

class MovieModel {
  final String title;
  final String genre;
  final double rating;
  final String imagePath;
  final String desc;

  MovieModel({
    required this.title,
    required this.genre,
    required this.rating,
    required this.imagePath,
    required this.desc,
  });
}

final List<String> tabs = ["All", "Popular", "Trending", "New Releases"];

final List<MovieModel> allMovies = [
  MovieModel(
    title: "Dragon Ball Super: Broly",
    genre: "Action",
    rating: 4.7,
    imagePath: Assets.poster1,
    desc:
        "Goku and Vegeta face their toughest opponent yet – the legendary Saiyan Broly. The film expands the Saiyan history while delivering jaw-dropping fights. Stunning visuals and intense battles make it a fan favorite. A must-watch for every Dragon Ball fan.",
  ),
  MovieModel(
    title: "Hunter x Hunter: Phantom Rouge",
    genre: "Adventure",
    rating: 4.6,
    imagePath: Assets.poster2,
    desc:
        "Gon and his friends get involved in a deadly conflict with the Phantom Troupe. The movie dives deeper into Kurapika’s tragic past and quest for revenge. Action, friendship, and emotional storytelling drive the plot. A thrilling addition to the Hunter x Hunter world.",
  ),

  MovieModel(
    title: "One Piece: Stampede",
    genre: "Adventure",
    rating: 4.7,
    imagePath: Assets.poster4,
    desc:
        "The Straw Hat Pirates join a massive festival of pirates, but danger awaits. They face powerful enemies and uncover secrets of the Pirate King, Gol D. Roger. Packed with action and fan service, the movie celebrates One Piece’s long journey. A treat for longtime fans of the series.",
  ),
  MovieModel(
    title: "Dragon Ball Z: Battle of Gods",
    genre: "Action",
    rating: 4.8,
    imagePath: Assets.poster3,
    desc:
        "The God of Destruction Beerus awakens from his long slumber and seeks to fight a worthy opponent. Goku reaches a new level of power, Super Saiyan God, in an epic showdown. The movie blends humor, intense battles, and mythological elements. It set the stage for Dragon Ball Super.",
  ),
  MovieModel(
    title: "Naruto Shippuden: The Last",
    genre: "Romance / Action",
    rating: 4.6,
    imagePath: Assets.poster5,
    desc:
        "Naruto faces a threat that could destroy the moon and Earth, while his bond with Hinata blossoms. The film mixes high-stakes battles with emotional storytelling. Stunning animation and heartfelt moments make it one of the best Naruto films. A perfect conclusion to Naruto’s journey.",
  ),
];

final Map<String, List<MovieModel>> moviesByTab = {
  "All": [allMovies[0], allMovies[1], allMovies[2], allMovies[3], allMovies[4]],
  "Popular": [allMovies[1], allMovies[2], allMovies[3], allMovies[4]],
  "Trending": [allMovies[2], allMovies[1], allMovies[3], allMovies[4]],
  "New Releases": [allMovies[3], allMovies[0], allMovies[1], allMovies[4]],
};
