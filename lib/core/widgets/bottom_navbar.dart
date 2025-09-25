import 'package:animation_app/core/constant/app_color.dart';
import 'package:animation_app/core/constant/app_images.dart';
import 'package:animation_app/features/home/ui/screens/home_page.dart';
import 'package:animation_app/features/upgrade_screen/ui/screens/upgrade_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    UpgradePage(),
    Center(child: Text("Search Page", style: TextStyle(fontSize: 22))),
    Center(child: Text("Global Page", style: TextStyle(fontSize: 22))),
    Center(child: Text("Settings Page", style: TextStyle(fontSize: 22))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightPurple,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SvgPicture.asset(Assets.home, color: Colors.grey),
                  )
                : SvgPicture.asset(Assets.home, color: Colors.grey),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightPurple,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SvgPicture.asset(Assets.group),
                  )
                : SvgPicture.asset(Assets.group),
            label: "Upgrade",
          ),
          BottomNavigationBarItem(
            label: "Search",

            icon: _currentIndex == 2
                ? Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightPurple,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SvgPicture.asset(Assets.search),
                  )
                : SvgPicture.asset(Assets.search),
          ),
          BottomNavigationBarItem(
            label: "Global",

            icon: _currentIndex == 3
                ? Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightPurple,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SvgPicture.asset(Assets.language),
                  )
                : SvgPicture.asset(Assets.language),
          ),
          BottomNavigationBarItem(
            label: "Settings",

            icon: _currentIndex == 4
                ? Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightPurple,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SvgPicture.asset(Assets.setting),
                  )
                : SvgPicture.asset(Assets.setting),
          ),
        ],
      ),
    );
  }
}
