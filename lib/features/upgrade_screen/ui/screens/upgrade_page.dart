import 'package:animation_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_images.dart';
import '../widgets/plan_card.dart';
import '../widgets/header_section.dart';

class UpgradePage extends StatefulWidget {
  const UpgradePage({super.key});

  @override
  State<UpgradePage> createState() => _UpgradePageState();
}

class _UpgradePageState extends State<UpgradePage> {
  int selectedPlan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Row(
                children: [
                  Expanded(
                    child: SvgPicture.asset(Assets.bigStar, fit: BoxFit.cover),
                  ),
                  Expanded(
                    child: SvgPicture.asset(Assets.bigStar, fit: BoxFit.cover),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HeaderSection(),
                    const SizedBox(height: 40),

                    Column(
                      children: [
                        PlanCard(
                          duration: 'Monthly\n',
                          price: '\$5 USD',
                          subtitle: ' / Month\n Include Family Sharing',
                          selected: selectedPlan == 0,
                          onTap: () => setState(() => selectedPlan = 0),
                        ),
                        const SizedBox(height: 16),
                        PlanCard(
                          duration: 'Annually\n',
                          price: '\$50 USD',
                          subtitle: ' / Year\n Include Family Sharing',
                          selected: selectedPlan == 1,
                          onTap: () => setState(() => selectedPlan = 1),
                        ),
                      ],
                    ),

                    const SizedBox(height: 37),
                    CustomButton(onPressed: () {}),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
