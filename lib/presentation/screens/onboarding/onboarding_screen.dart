import 'package:flutter/material.dart';

import '../../../shared/shared.dart';
import '../main/main_navigation_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  static const List<_OnboardingPageData> _pages = [
    _OnboardingPageData(
      title: 'Postres caseros en un solo lugar',
      description:
          'Explora tortas, cuchareables, pies y m\u00E1s productos de Kal\u00FA.',
      icon: AppIcons.cake,
      backgroundColor: AppColors.softPink,
    ),
    _OnboardingPageData(
      title: 'Promociones y favoritos',
      description:
          'Encuentra ofertas especiales y guarda tus postres preferidos.',
      icon: AppIcons.favoriteBorder,
      backgroundColor: AppColors.pastelYellow,
    ),
    _OnboardingPageData(
      title: 'Pide r\u00E1pido por WhatsApp',
      description:
          'Agrega productos al carrito y env\u00EDa tu pedido de forma sencilla.',
      icon: Icons.chat_bubble_outline,
      backgroundColor: AppColors.pastelMint,
    ),
  ];

  bool get _isLastPage => _currentPage == _pages.length - 1;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_isLastPage) {
      _goToHome();
      return;
    }

    _pageController.nextPage(
      duration: const Duration(milliseconds: 320),
      curve: Curves.easeOutCubic,
    );
  }

  void _goToHome() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute<void>(builder: (_) => const MainNavigationScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: EdgeInsets.zero,
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(
                top: AppSpacing.md,
                right: AppSpacing.lg,
              ),
              child: TextButton(
                onPressed: _goToHome,
                child: const Text('Omitir'),
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _pages.length,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemBuilder: (context, index) {
                return _OnboardingPage(data: _pages[index]);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.xl,
              AppSpacing.md,
              AppSpacing.xl,
              AppSpacing.xl,
            ),
            child: Column(
              children: [
                _PageIndicators(
                  count: _pages.length,
                  currentIndex: _currentPage,
                ),
                const SizedBox(height: AppSpacing.xl),
                AppButton(
                  label: _isLastPage ? 'Comenzar' : 'Siguiente',
                  icon: _isLastPage
                      ? Icons.check_circle_outline
                      : Icons.arrow_forward,
                  expand: true,
                  onPressed: _nextPage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _OnboardingPage extends StatelessWidget {
  const _OnboardingPage({required this.data});

  final _OnboardingPageData data;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final compact = constraints.maxHeight < 520;
        final visualHeight = compact ? 176.0 : 240.0;

        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppCard(
                  backgroundColor: data.backgroundColor,
                  padding: EdgeInsets.all(
                    compact ? AppSpacing.lg : AppSpacing.xxl,
                  ),
                  child: SizedBox(
                    height: visualHeight,
                    width: double.infinity,
                    child: Center(
                      child: Container(
                        width: compact ? 96 : 128,
                        height: compact ? 96 : 128,
                        decoration: const BoxDecoration(
                          color: AppColors.white,
                          shape: BoxShape.circle,
                          boxShadow: AppShadow.subtle,
                        ),
                        child: Icon(
                          data.icon,
                          color: AppColors.primaryPink,
                          size: compact ? 44 : 58,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: compact ? AppSpacing.lg : AppSpacing.xxl),
                Text(
                  data.title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: AppColors.darkBrown,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                Text(
                  data.description,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.textSecondary,
                    height: 1.45,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _PageIndicators extends StatelessWidget {
  const _PageIndicators({required this.count, required this.currentIndex});

  final int count;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        final isActive = index == currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 220),
          width: isActive ? 24 : 8,
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: AppSpacing.xs),
          decoration: BoxDecoration(
            color: isActive ? AppColors.primaryPink : AppColors.border,
            borderRadius: BorderRadius.circular(AppRadius.pill),
          ),
        );
      }),
    );
  }
}

class _OnboardingPageData {
  const _OnboardingPageData({
    required this.title,
    required this.description,
    required this.icon,
    required this.backgroundColor,
  });

  final String title;
  final String description;
  final IconData icon;
  final Color backgroundColor;
}
