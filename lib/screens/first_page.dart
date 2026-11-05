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
          style: AppTypography.title2.copyWith(color: AppColors.clearCol, 
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
                  
                  Container( 
                    width: double.infinity,
                    height: 100, 

                    padding: const EdgeInsets.symmetric(horizontal: 20), 
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.primary),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Scott Brown',
                          style: AppTypography.title5.copyWith(color: AppColors.textDark),
                        ),
                        Text(
                          'VS',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Stone Stella',
                          style: AppTypography.title5.copyWith(color: AppColors.textDark),
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