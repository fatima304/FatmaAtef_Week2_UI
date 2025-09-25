import 'package:animation_app/core/constant/app_images.dart';

class CharacterModel {
  final String characterName;
  final String movieTitle;
  final String imagePath;

  CharacterModel({
    required this.characterName,
    required this.movieTitle,
    required this.imagePath,
  });
}

final List<CharacterModel> characters = [
  CharacterModel(
    characterName: "Naruto Uzumaki",
    movieTitle: "Naruto",
    imagePath: Assets.char1,
  ),
  CharacterModel(
    characterName: "Monkey D. Luffy",
    movieTitle: "One Piece",
    imagePath: Assets.char2,
  ),
  CharacterModel(
    characterName: "Eren Yeager",
    movieTitle: "Attack on Titan",
    imagePath: Assets.char3,
  ),
  CharacterModel(
    characterName: "Goku",
    movieTitle: "Dragon Ball Z",
    imagePath: Assets.char4,
  ),
  CharacterModel(
    characterName: "Light Yagami",
    movieTitle: "Death Note",
    imagePath: Assets.char5,
  ),
];
