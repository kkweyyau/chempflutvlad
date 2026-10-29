import 'package:flutter/material.dart';

import 'package:qweqwe/app_router.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp.router(routerConfig: AppRouter().config()));
}