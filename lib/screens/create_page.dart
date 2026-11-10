import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qweqwe/classi/app_colors.dart';
import 'package:qweqwe/classi/app_typography.dart'; 

@RoutePage()
class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
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
                  style: AppTypography.title2ExtraBold.copyWith(
                    color: AppColors.accent,
                    fontSize: 28,
                  ),
                ),
              ),
              const SizedBox(height: 8),

              Padding(
                padding: const EdgeInsets.only(left: 52.0),
                child: Text(
                  'Hi, kindly fill in the form to proceed\ncombat',
                  style: AppTypography.captionMini.copyWith(
                    color: AppColors.textDark,
                    fontSize: 12,
                    height: 1.4,
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
                        style: const TextStyle(fontSize: 14),
                        decoration: const InputDecoration(
                          labelText: 'Full Name',
                          labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: TextFormField(
                        style: const TextStyle(fontSize: 14),
                        decoration: const InputDecoration(
                          labelText: 'User Name',
                          labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                        ),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        style: const TextStyle(fontSize: 14),
                        decoration: InputDecoration(
                          hintText: 'Your Phone',
                          hintStyle: TextStyle(color: Colors.grey[600], fontSize: 14),
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(width: 10),
                              const Text('+234', style: TextStyle(color: AppColors.textDark, fontSize: 14)),
                              const SizedBox(width: 10),
                              Container(width: 1, height: 20, color: AppColors.accentInactive),
                              const SizedBox(width: 10),
                            ],
                          ),
                          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: TextFormField(
                        style: const TextStyle(fontSize: 14),
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: TextFormField(
                        obscureText: true,
                        style: const TextStyle(fontSize: 14),
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                          suffixIcon: Icon(Icons.visibility_off, color: AppColors.accentInactive, size: 20),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: TextFormField(
                        obscureText: true,
                        style: const TextStyle(fontSize: 14),
                        decoration: const InputDecoration(
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                          suffixIcon: Icon(Icons.visibility_off, color: AppColors.accentInactive, size: 20),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
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
                      style: AppTypography.captionMiniBold.copyWith(
                        color: AppColors.white,
                        fontSize: 16,
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
                      style: AppTypography.captionMiniBold.copyWith(
                        color: AppColors.accent,
                        fontSize: 12,
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
                            color: Colors.redAccent,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: const Text('G', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
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
                          child: const Text('f', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
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
                      style: AppTypography.captionMini.copyWith(
                        color: AppColors.textDark,
                        fontSize: 12,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        'Login',
                        style: AppTypography.captionMiniBold.copyWith(
                          color: AppColors.accent,
                          fontSize: 12,
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