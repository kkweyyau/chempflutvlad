import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qweqwe/classi/app_colors.dart';
import 'package:qweqwe/classi/app_typography.dart'; 
import 'package:qweqwe/app_router.dart';

@RoutePage()
class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              
              Padding(
                padding: const EdgeInsets.only(left: 27.0),
                child: SizedBox(
                  height: 260,
                  child: Image.asset(
                    'assets/Create acc.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              const SizedBox(height: 20),
              
              Padding(
                padding: const EdgeInsets.only(left: 52.0),
                child: Text(
                  'Create Account',
                  style: AppTypography.title1ExtraBold.copyWith(
                    color: AppColors.accent,
                  ),
                ),
              ),

              const SizedBox(height: 8),

              Padding(
                padding: const EdgeInsets.only(left: 52.0),
                child: Text(
                  'Hi, kindly fill in the form to proceed\ncombat',
                  style: AppTypography.caption2Regular.copyWith(
                    color: AppColors.black,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.only(left: 52.0, right: 60.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: TextFormField(
                        style: AppTypography.captionRegular.copyWith(color: AppColors.black),
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                          labelStyle: AppTypography.captionRegular.copyWith(color: Colors.grey),
                          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.grey)),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: TextFormField(
                        style: AppTypography.captionRegular.copyWith(color: AppColors.black),
                        decoration: InputDecoration(
                          labelText: 'User Name',
                          labelStyle: AppTypography.captionRegular.copyWith(color: Colors.grey),
                          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.grey)),
                        ),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        style: AppTypography.captionRegular.copyWith(color: AppColors.black),
                        decoration: InputDecoration(
                          hintText: 'Your Phone',
                          hintStyle: AppTypography.captionRegular.copyWith(color: AppColors.grey),
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(width: 10),
                              Text('+234', style: AppTypography.captionRegular.copyWith(color: AppColors.black)),
                              const SizedBox(width: 10),
                              Container(width: 1, height: 20, color: AppColors.accentInactive),
                              const SizedBox(width: 10),
                            ],
                          ),
                          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.grey)),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: TextFormField(
                        style: AppTypography.captionRegular.copyWith(color: AppColors.black),
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: AppTypography.captionRegular.copyWith(color: AppColors.grey),
                          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.grey)),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: TextFormField(
                        obscureText: true,
                        style: AppTypography.captionRegular.copyWith(color: AppColors.black),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: AppTypography.captionRegular.copyWith(color: Colors.grey),
                          suffixIcon: const Icon(Icons.visibility_off, color: AppColors.accentInactive, size: 20),
                          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.grey)),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: TextFormField(
                        obscureText: true,
                        style: AppTypography.captionRegular.copyWith(color: AppColors.black),
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          labelStyle: AppTypography.captionRegular.copyWith(color: Colors.grey),
                          suffixIcon: const Icon(Icons.visibility_off, color: AppColors.accentInactive, size: 20),
                          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.grey)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.only(left: 52.0, right: 52.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
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
                      'Create Account',
                      style: AppTypography.headlineMedium.copyWith(
                        color: AppColors.white,
                      ),

                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 30),

              Center(
                child: Column(
                  children: [
                    Text(
                      'Connect With:',
                      style: AppTypography.caption2Bold.copyWith(
                        color: AppColors.accent,
                      ),
                    ),

                    const SizedBox(height: 12),

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
                          child: const Text('G', style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                        ),

                        const SizedBox(width: 16),

                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: const Text('f', style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              Center(
                child: Column(
                  children: [
                    Text(
                      'Already have an account?',
                      style: AppTypography.caption2Regular.copyWith(
                        color: AppColors.black,
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        context.router.push(const LoginRoute());
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),

                      child: Text(
                        'Login',
                        style: AppTypography.caption2Bold.copyWith(
                          color: AppColors.accent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}