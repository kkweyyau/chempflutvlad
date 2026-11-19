import 'package:flutter/material.dart';
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
              offset: const Offset(0, -90),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/Group 3.png',
                    width: 110,
                    height: 110,
                  ),
                  
                  const SizedBox(height: 10),

                  Text(
                    'GAAMETIME',
                    style: AppTypography.title1Extra.copyWith(
                      color: AppColors.white,
                      fontSize: 34,
                      letterSpacing: 1.5,
                    ),
                  ),
                  
                  const SizedBox(height: 4),

                  Text(
                    'CONNECT WITH YOUR REALITY',
                    style: AppTypography.caption2Bold.copyWith(
                      color: AppColors.white,
                      letterSpacing: 1.2,
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