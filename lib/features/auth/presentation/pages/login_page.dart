import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/theme_toggle_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;

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
                    const SizedBox(height: 80),
                    Text(
                      'Welcome Back\nTO AI Tutor',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28, 
                        fontWeight: FontWeight.bold, 
                        color: theme.colorScheme.onSurface, 
                        height: 1.3,
                      ),
                    ),
                    const SizedBox(height: 48),
                    const CustomTextField(hintText: 'Email address'),
                    const SizedBox(height: 16),
                    const CustomTextField(hintText: 'Password', isPassword: true),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 24,
                              width: 24,
                              child: Checkbox(
                                value: _rememberMe,
                                activeColor: AppColors.primaryCyan,
                                side: BorderSide(color: theme.colorScheme.onSurfaceVariant),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                onChanged: (val) {
                                  setState(() {
                                    _rememberMe = val ?? false;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Remember me', 
                              style: TextStyle(
                                color: theme.colorScheme.onSurfaceVariant, 
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Forgot Password?', 
                          style: TextStyle(
                            color: theme.colorScheme.onSurfaceVariant, 
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    PrimaryButton(
                      text: 'Log in',
                      onPressed: () {
                        context.go('/home');
                      },
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New to AI Tutor? ',
                          style: TextStyle(
                            color: theme.colorScheme.onSurface, 
                            fontSize: 14,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => context.go('/signup'),
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                              color: AppColors.primaryCyan, 
                              fontSize: 14, 
                              fontWeight: FontWeight.w600,
                            ),
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
