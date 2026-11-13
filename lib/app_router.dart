import 'package:auto_route/auto_route.dart';
import 'package:qweqwe/screens/first_page.dart';
import 'package:qweqwe/screens/splash_page.dart';
import 'package:qweqwe/screens/onboarding_page.dart';
import 'package:qweqwe/screens/onboarding_page_2.dart';
import 'package:qweqwe/screens/onboarding_page_3.dart';
import 'package:qweqwe/screens/create_page.dart';
import 'package:qweqwe/screens/login_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: FirstRoute.page),
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: OnBoardingRoute.page),
    AutoRoute(page: OnBoardingRoute2.page),
    AutoRoute(page: OnBoardingRoute3.page),
    AutoRoute(page: CreateRoute.page),
    AutoRoute(page: LoginRoute.page),
  ];
}