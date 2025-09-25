import 'package:animation_app/core/constant/app_color.dart';
import 'package:animation_app/core/constant/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  final List<String> tabs;
  final ValueChanged<int> onTabSelected;

  const CustomTabBar({
    super.key,
    required this.tabs,
    required this.onTabSelected,
  });

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: widget.tabs.length,
        separatorBuilder: (context, index) => const SizedBox(width: 4),
        itemBuilder: (context, index) {
          final isSelected = index == selectedIndex;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              widget.onTabSelected(index);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.lightPurple : AppColors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  widget.tabs[index],
                  style: AppTextStyle.font24DarkBlueBold.copyWith(
                    fontSize: 14,
                    color: isSelected ? AppColors.white : AppColors.lightPurple,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
