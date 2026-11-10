import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qweqwe/classi/app_colors.dart';
import 'package:qweqwe/app_router.dart';
import 'package:qweqwe/classi/app_typography.dart';
//import 'package:qweqwe/classi/app_typography.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});


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
                'assets/onboarding_1.png',
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  Text('Get Paid! Playing\nVideo Game',
                  textAlign: TextAlign.center,
                  style: AppTypography.title2ExtraBold.copyWith(
                    color: AppColors.accent,
                    fontSize: 28,
                    height: 1.1,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Earn points and real cash when\nyou win a battle with no delay\nin cashning out',
                    textAlign: TextAlign.center,
                    style: AppTypography.captionMini.copyWith(
                      color: AppColors.textDark,
                      fontSize: 16,
                      height: 1.5,
                      
                    ),
                  ),
                ],
              ),  
            ),
            const Spacer(),

            TextButton(
              onPressed: () {
                context.router.replaceAll([const OnBoardingRoute2()]);
              },
              child: Text(
                'Skip',
                style: AppTypography.captionMiniBold.copyWith(
                  color: AppColors.accent,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDot(isActive: true),
                const SizedBox(width: 8),
                _buildDot(isActive: false),
                const SizedBox(width: 8),
                _buildDot(isActive: false),
              ],
            ),
            const SizedBox(height: 40),
          ],
        )
        ),
    );
  }
  Widget _buildDot({required bool isActive}) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive
            ? AppColors.accent
            : AppColors.accentInactive,
      ),
    );
  }
}