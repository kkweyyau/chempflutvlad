import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qweqwe/classi/app_colors.dart';
import 'package:qweqwe/classi/app_typography.dart';
import 'package:qweqwe/app_router.dart';

@RoutePage()
class OnBoardingPage2 extends StatelessWidget {
  const OnBoardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.45,
              child: Image.asset(
                'assets/onboarding_2.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  Text(
                    'Schedule Games\nWith Friends',
                    textAlign: TextAlign.center,
                    style: AppTypography.title1ExtraBold.copyWith(
                      color: AppColors.accent,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Easily create an upcoming\nevent and get ready for battle.\nYeah! real combat fella.',
                    textAlign: TextAlign.center,
                    style: AppTypography.headlineRegular.copyWith(
                      color: AppColors.textDark,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                context.router.replaceAll([const OnBoardingRoute3()]);
              },
              child: Text(
                'Skip',
                style: AppTypography.captionSemiBold.copyWith(
                  color: AppColors.accent,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDot(isActive: false),
                const SizedBox(width: 8),
                _buildDot(isActive: true),
                const SizedBox(width: 8),
                _buildDot(isActive: false),
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