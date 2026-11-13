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
      backgroundColor: AppColors.accent, 
      
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: AppColors.accent,
        foregroundColor: AppColors.background,
        elevation: 0,
        titleSpacing: 30,
        title: Text(
          'Discover\nCombats',
          style: AppTypography.title2ExtraBold.copyWith(
            color: AppColors.white, 
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30, bottom: 16),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'FILTER',
                style: AppTypography.headlineMedium.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ],    
      ),

      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: AppColors.accent,
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            child: Container(
              height: 56,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Icon(Icons.search, color: AppColors.accent),
                  const SizedBox(width: 12),
                  Text(
                    'Search Combat',
                    style: AppTypography.textRegular.copyWith(
                      color: AppColors.accent,
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
                        style: AppTypography.title2ExtraBold.copyWith(
                          color: AppColors.accent,
                        ),
                      ),
                      Text(
                        'View All >>',
                        style: AppTypography.caption2Regular.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 20),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.accent),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    ClipOval(
                                      child: Image.asset(
                                        'assets/123.png', 
                                        width: 40, height: 40, fit: BoxFit.cover, 
                                      ),
                                    ),
                                    Positioned(
                                      top: -8, left: -4,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: AppColors.accent,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          'Host', 
                                          style: AppTypography.caption2Bold.copyWith(
                                            color: AppColors.white,
                                            fontSize: 8,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  'Scott Brown', 
                                  style: AppTypography.caption2Bold.copyWith(
                                    color: AppColors.black,
                                  ), 
                                  maxLines: 1, 
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                'VS',
                                style: AppTypography.title1ExtraBold.copyWith(
                                  color: AppColors.accent,
                                ),
                              ),
                            ),
                            
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    ClipOval(
                                      child: Image.asset(
                                        'assets/123.png', 
                                        width: 40, height: 40, fit: BoxFit.cover, 
                                      ),
                                    ),
                                    Positioned(
                                      top: -8, left: -4,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: AppColors.accent,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          'Guest', 
                                          style: AppTypography.caption2Bold.copyWith(
                                            color: AppColors.white,
                                            fontSize: 8,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                
                                const SizedBox(height: 6),

                                Text(
                                  'Stone Stella', 
                                  style: AppTypography.caption2Bold.copyWith(
                                    color: AppColors.black,
                                  ), 
                                  maxLines: 1, 
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ],
                        ),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Game Name:', 
                                        style: AppTypography.caption2Regular.copyWith(
                                          color: AppColors.black,
                                        ), 
                                        maxLines: 1, 
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        'Halo 5', 
                                        style: AppTypography.caption2Bold.copyWith(
                                          color: AppColors.accent,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Status:', 
                                        style: AppTypography.caption2Regular.copyWith(
                                          color: AppColors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        'Open', 
                                        style: AppTypography.caption2Bold.copyWith(
                                          color: AppColors.accent,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Winning Price:', 
                                        style: AppTypography.caption2Regular.copyWith(
                                          color: AppColors.black,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),

                                      const SizedBox(height: 6),

                                      Text(
                                        '\$4,000', 
                                        style: AppTypography.caption2Bold.copyWith(
                                          color: AppColors.accent,
                                        ),
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