import 'package:auto_route/auto_route.dart';
import 'package:qweqwe/screens/first_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: FirstRoute.page, initial: true),

  ];

}