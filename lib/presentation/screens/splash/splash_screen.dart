import 'dart:async';

import 'package:flutter/material.dart';

import '../../../shared/shared.dart';
import '../onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _showTimer;
  Timer? _navigationTimer;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _showTimer = Timer(const Duration(milliseconds: 120), () {
      if (!mounted) return;
      setState(() => _isVisible = true);
    });
    _navigationTimer = Timer(
      const Duration(milliseconds: 1800),
      _goToOnboarding,
    );
  }

  @override
  void dispose() {
    _showTimer?.cancel();
    _navigationTimer?.cancel();
    super.dispose();
  }

  void _goToOnboarding() {
    if (!mounted) return;
    Navigator.of(context).pushReplacement(
      MaterialPageRoute<void>(builder: (_) => const OnboardingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cream,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(AppSpacing.xl),
          decoration: const BoxDecoration(
            color: AppColors.cream,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.softPink, AppColors.cream, AppColors.vanilla],
            ),
          ),
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 650),
            opacity: _isVisible ? 1 : 0,
            child: AnimatedScale(
              duration: const Duration(milliseconds: 650),
              scale: _isVisible ? 1 : 0.94,
              curve: Curves.easeOutCubic,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                      boxShadow: AppShadow.soft,
                    ),
                    child: const Icon(
                      AppIcons.cake,
                      color: AppColors.primaryPink,
                      size: 54,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  Text(
                    'Kal\u00FA',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: AppColors.darkBrown,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    'Pasteler\u00EDa Casera',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.softBrown,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xxl),
                  const SizedBox(
                    width: 28,
                    height: 28,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      color: AppColors.primaryPink,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
