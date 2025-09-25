import 'package:animation_app/features/details_screen/ui/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class GenreSection extends StatelessWidget {
  const GenreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        CustomContainer(type: 'Dark Fantasy'),
        CustomContainer(type: 'Action'),
        CustomContainer(type: 'Adventure'),
      ],
    );
  }
}
