import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qweqwe/classi/app_colors.dart';
import 'package:qweqwe/classi/app_typography.dart'; 

@RoutePage()
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary, 
      
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.background,
        elevation: 0,
        titleSpacing: 30,
        title: Text(
          'Discover\nCombats',
          style: AppTypography.title2.copyWith(
            color: AppColors.clearCol, 
            height: 1.4,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30, bottom: 16),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'FILTER',
                style: AppTypography.title4.copyWith(color: AppColors.clearCol),
              ),
            ),
          ),
        ],    
      ),

      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: AppColors.primary,
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            child: Container(
              height: 56,
              decoration: BoxDecoration(
                color: AppColors.clearCol,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Icon(Icons.search, color: AppColors.primary),
                  const SizedBox(width: 12),
                  Text(
                    'Search Combat',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: Container(
              color: AppColors.background, 
              padding: const EdgeInsets.all(16), 
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trending this week',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'View All >>',
                        style: AppTypography.title3.copyWith(color: AppColors.textDark),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 20),
                  
//carta
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.primary),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
// левая парт
                        Row(
                          children: [

                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    'assets/123.png', 
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover, 
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Scott Brown', 
                                  style: AppTypography.title5.copyWith(color: AppColors.textDark), 
                                  maxLines: 1, 
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            
                            
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                'VS',
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),

                            // 2 чел
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    'assets/123.png', 
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover, 
                                  ),
                                ),
                                 
                                
                                const SizedBox(height: 4),
                                Text(
                                  'Stone Stella', 
                                  style: AppTypography.title5.copyWith(color: AppColors.textDark), 
                                  maxLines: 1, 
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ],
                        ),
// правая чатсьт
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Game: ', style: TextStyle(color: Colors.grey[600], fontSize: 11)),
                                Text('Halo 5', style: TextStyle(color: AppColors.primary, fontSize: 13, fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(height: 6),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Status: ', style: TextStyle(color: Colors.grey[600], fontSize: 11)),
                                Text('Open', style: TextStyle(color: AppColors.primary, fontSize: 13, fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                        
                      ], 
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