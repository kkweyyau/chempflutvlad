import 'package:material_ui/material_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qweqwe/app_router.dart';
import 'package:qweqwe_ui/qweqwe_ui.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      context.router.replaceAll([const OnBoardingRoute()]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accent, 
      body: Stack( 
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/Graphics.png', 
              fit: BoxFit.fitWidth,
            ),
          ),

          Center(
            child: Transform.translate(
              offset: const Offset(0, -85),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/Group 3.png',
                    width: 70,
                    fit: BoxFit.contain,
                  ),
                  
                  const SizedBox(height: 5),

                  Text(
                    'GAAMETIIME',
                    style: AppTypography.redHeadText.copyWith(
                      color: AppColors.white,
                      fontSize: 28,
                      letterSpacing: 1.3,
                      height: 1.4,
                    ),
                  ),
                  
                  const SizedBox(height: 0),

                  Text(
                    'CONNECT WITH YOUR REALITY',
                    style: AppTypography.caption2Bold.copyWith(
                      color: AppColors.white,
                      letterSpacing: 0.2,
                      fontSize: 11,
                      height: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}