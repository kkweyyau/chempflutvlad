import 'package:material_ui/material_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qweqwe_ui/qweqwe_ui.dart';
// import 'package:qweqwe/app_router.dart';


@RoutePage()

class SideMenuPage extends StatelessWidget {
  const SideMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 44),
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    context.router.maybePop();
                  },
                  icon: Container(
                    width: 26,
                    height: 26,
                    
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.accent,
                        width: 2,
                      
                      ),
                      
                    ),
                  
                  child: Icon(
                    Icons.close,
                    color: AppColors.accent,
                    size: 16,
                    fontWeight: FontWeight(700),
                  ),
                ),
              ),
            ),
          ),
            Padding(
              padding: EdgeInsets.only(left: 60, right: 0, top: 71),
              child: Row(
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: BoxBorder.all(
                        color: AppColors.accent,
                        width: 4.67,
                      ),
                      image: DecorationImage(
                        image: 
                        AssetImage('assets/123.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Stone Stellar',
                      style: AppTypography.redHeadText.copyWith(
                        color: AppColors.accent,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.3,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.workspace_premium,
                          size: 10,
                          color: Color(0xFFF4C73E),
                        ),
                        
                        Text(
                          'Gold Player',
                          style: AppTypography.redHeadText.copyWith(
                            color: Color(0xFFF4C73E),
                            fontSize: 10,
                            fontWeight: FontWeight(400),
                            letterSpacing: -0.3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 53, right: 60,left: 60),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.person_outline_rounded,
                          color: AppColors.accent,
                          size: 22,
                        ),
                        const SizedBox(width: 24),
                        Row(
                          children: [
                            Text(
                              'My Profile',
                              style: AppTypography.redHeadText.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight(400),
                                letterSpacing: -0.3,
                              ),

                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}