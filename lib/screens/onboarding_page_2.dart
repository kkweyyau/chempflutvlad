import 'package:material_ui/material_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qweqwe/app_router.dart';
import 'package:qweqwe_ui/qweqwe_ui.dart';

@RoutePage()
class OnBoardingPage2 extends StatelessWidget {
  const OnBoardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 40),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
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
                    style: AppTypography.redHeadText.copyWith(
                      color: AppColors.accent,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(top: 36),
                    child: Text(
                      'Easily create an upcoming\nevent and get ready for battle.\nYeah! real combat fella.',
                      textAlign: TextAlign.center,
                      style: AppTypography.redHeadUnderText.copyWith(
                        color: AppColors.black,
                      ),
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
                style: AppTypography.redHeadSkip.copyWith(
                  color: AppColors.accent,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.accent,
                  decorationThickness: 1.5,
                ),
              ),
            ),
            // const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 71),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDot(isActive: false),
                  const SizedBox(width: 10),
                  _buildDot(isActive: true),
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