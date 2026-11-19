import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qweqwe_ui/qweqwe_ui.dart';
import 'package:qweqwe/app_router.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 80),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Image.asset(
                  'assets/onboarding_1.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            
            const SizedBox(height: 30),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  Text(
                    'Get Paid! Playing\nVideo Game',
                    textAlign: TextAlign.center,
                    style: AppTypography.redHeadText.copyWith(
                      color: AppColors.accent,
                    ),
                  ),
                  
                  const SizedBox(height: 36), 
                  
                  Text(
                    'Earn points and real cash when\nyou win a battle with no delay\nin cashning out',
                    textAlign: TextAlign.center,
                    style: AppTypography.redHeadUnderText.copyWith(
                      color: AppColors.black,
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
                style: AppTypography.redHeadSkip.copyWith(
                  color: AppColors.accent,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 71),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDot(isActive: true),
                  const SizedBox(width: 10),
                  _buildDot(isActive: false),
                  const SizedBox(width: 10),
                  _buildDot(isActive: false),
                ],
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildDot({required bool isActive}) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? AppColors.accent : AppColors.accentInactive,
      ),
    );
  }
}