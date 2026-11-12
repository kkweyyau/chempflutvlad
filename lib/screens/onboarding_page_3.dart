import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qweqwe/classi/app_colors.dart';
import 'package:qweqwe/classi/app_typography.dart';
import 'package:qweqwe/app_router.dart';

@RoutePage()
class OnBoardingPage3 extends StatelessWidget {
  const OnBoardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 90),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.38,
              child: Image.asset(
                'assets/onboarding_3.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  Text(
                    'Text, Audio and\nVideo Chat',
                    textAlign: TextAlign.center,
                    style: AppTypography.title1ExtraBold.copyWith(
                      color: AppColors.accent,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Intuitive real life experience on\nmobile. Chat with fellow gamers\nbefore and after combat for\nfree!',
                    textAlign: TextAlign.center,
                    style: AppTypography.headlineRegular.copyWith(
                      color: AppColors.textDark,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    context.router.replaceAll([const CreateRoute()]);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  child: Text(
                    "Let's Combat!",
                    style: AppTypography.headlineMedium.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDot(isActive: false),
                const SizedBox(width: 8),
                _buildDot(isActive: false),
                const SizedBox(width: 8),
                _buildDot(isActive: true),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildDot({required bool isActive}) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? AppColors.accent : AppColors.accentInactive,
      ),
    );
  }
}