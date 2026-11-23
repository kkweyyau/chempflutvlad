import 'package:material_ui/material_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qweqwe_ui/qweqwe_ui.dart';

@RoutePage()
class SideMenuPage extends StatelessWidget {
  const SideMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: 
        Align(alignment: Alignment.centerLeft,
        child: Container(
          width: 300,
          height: double.infinity,
          color: AppColors.white,
        ),
        ),

          
      
    );
  }
  
}