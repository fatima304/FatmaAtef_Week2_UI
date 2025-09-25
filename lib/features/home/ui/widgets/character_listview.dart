import 'package:animation_app/features/home/data/models/character_model.dart';
import 'package:animation_app/features/home/ui/widgets/character_widget.dart';
import 'package:flutter/material.dart';

class CharacterListView extends StatelessWidget {
  const CharacterListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 10),
        scrollDirection: Axis.horizontal,
        itemCount: characters.length,
        itemBuilder: (context, index) {
          return CharactersWidget(character: characters[index]);
        },
      ),
    );
  }
}
