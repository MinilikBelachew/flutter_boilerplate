import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/social_login_button.dart';
import '../../../../core/widgets/theme_toggle_button.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppColors.getBackgroundGradient(context),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              const Positioned(
                top: 0,
                right: 0,
                child: ThemeToggleButton(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60),
                    Text(
                      'Create an account',
                      style: TextStyle(
                        fontSize: 28, 
                        fontWeight: FontWeight.bold, 
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? ',
                          style: TextStyle(
                            color: theme.colorScheme.onSurfaceVariant, 
                            fontSize: 14,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => context.go('/'),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: AppColors.primaryCyan, 
                              fontSize: 14, 
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 48),
                    const CustomTextField(hintText: 'Email address'),
                    const SizedBox(height: 16),
                    const CustomTextField(hintText: 'Password', isPassword: true),
                    const SizedBox(height: 32),
                    PrimaryButton(
                      text: 'Continue',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        Expanded(child: Divider(color: theme.colorScheme.onSurfaceVariant.withOpacity(0.3))),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'or sign up with', 
                            style: TextStyle(
                              color: theme.colorScheme.onSurfaceVariant, 
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Expanded(child: Divider(color: theme.colorScheme.onSurfaceVariant.withOpacity(0.3))),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SocialLoginButton(
                          icon: FontAwesomeIcons.google,
                          color: Colors.red,
                          onPressed: () {},
                        ),
                        SocialLoginButton(
                          icon: FontAwesomeIcons.apple,
                          // Use theme color for apple icon (black on light, white on dark)
                          color: theme.brightness == Brightness.dark ? Colors.white : Colors.black,
                          onPressed: () {},
                        ),
                        SocialLoginButton(
                          icon: FontAwesomeIcons.facebookF,
                          color: Colors.blue,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      'By clicking create account you agree to recognotes',
                      style: TextStyle(
                        color: theme.colorScheme.onSurfaceVariant, 
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Terms of use', 
                          style: TextStyle(
                            color: AppColors.primaryCyan, 
                            fontSize: 12, 
                            decoration: TextDecoration.underline, 
                            decorationColor: AppColors.primaryCyan,
                          ),
                        ),
                        Text(
                          ' and ', 
                          style: TextStyle(
                            color: theme.colorScheme.onSurfaceVariant, 
                            fontSize: 12,
                          ),
                        ),
                        const Text(
                          'Privacy policy', 
                          style: TextStyle(
                            color: AppColors.primaryCyan, 
                            fontSize: 12, 
                            decoration: TextDecoration.underline, 
                            decorationColor: AppColors.primaryCyan,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
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
