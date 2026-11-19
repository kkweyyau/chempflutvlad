import 'package:material_ui/material_ui.dart';
import 'package:qweqwe/app_router.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp.router(
    debugShowCheckedModeBanner: false,
    routerConfig: AppRouter().config()));
}