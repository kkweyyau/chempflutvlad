import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qweqwe/classi/app_colors.dart';
import 'package:qweqwe/classi/app_typography.dart'; 
import 'package:qweqwe/app_router.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 95),
              
              Image.asset(
                'assets/login.png',
                fit: BoxFit.contain,
              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 52.0, top: 41 ),
                child: Text(
                  'Welcome Back!',
                  style: AppTypography.title1ExtraBold.copyWith(
                    color: AppColors.accent,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 52.0, top: 23),
                child: Text(
                  'Hi, Kindly login to continue battle',
                  style: AppTypography.caption2Regular.copyWith(
                    color: AppColors.black,
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 52.0, right: 60.0, top: 42),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: TextField(
                        style: AppTypography.captionRegular.copyWith(color: AppColors.black),
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: AppTypography.captionRegular.copyWith(color: AppColors.black),
                          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                        ),
                      ),
                    ),

                    TextField(
                      obscureText: true,
                      style: AppTypography.captionRegular.copyWith(color: AppColors.black),
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: AppTypography.captionRegular.copyWith(color: AppColors.black),
                        suffixIcon: const Icon(Icons.visibility_off, color: AppColors.accentInactive, size: 20),
                        enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                        focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                      ),
                    ),

                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password?',
                        style: AppTypography.caption2Regular.copyWith(
                          color: AppColors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 27),

              // КНОПКА
              Padding(
                padding: const EdgeInsets.only(left: 52.0, right: 52.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 58,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.accent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(
                      'Let’s Combat!',
                      style: AppTypography.headlineMedium.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 23), // Уменьшили отступ

              // СОЦСЕТИ
              Center(
                child: Column(
                  children: [
                    Text(
                      'Connect With:',
                      style: AppTypography.caption2Bold.copyWith(
                        color: AppColors.accent,
                      ),
                    ),

                    const SizedBox(height: 7),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: AppColors.error,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: const Text('G', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)), 
                        ),
                        const SizedBox(width: 16),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle),
                          alignment: Alignment.center,
                          child: const Text('f', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              Center(
                child: Column(
                  children: [
                    Text(
                      'Don’t have an account? ',
                      style: AppTypography.caption2Regular.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    
                    InkWell(
                      onTap: (){context.router.push(const CreateRoute());} ,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        'Create Account',
                        style: AppTypography.caption2Bold.copyWith(
                          color: AppColors.accent,
                          ),
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
    );
  }
}