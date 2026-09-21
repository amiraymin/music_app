import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/auth/auth_widgets.dart';
import 'login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _page = 0;

  static const _pages = [
    (
      'Music for your wellbeing',
      'Listen to music that matches your mood and makes every moment feel better.',
      'assets/images/onboarding_1.png',
    ),
    (
      'Rhythms based on your needs',
      'Find playlists and sounds created for focus, energy, and calm.',
      'assets/images/onboarding_2.png',
    ),
    (
      'Playlist to boost your energy',
      'Build your own collection and keep your favorite music close.',
      'assets/images/onboarding_3.png',
    ),
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildOnboardingImage(int index) {
    switch (index) {
      case 0:
        return Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/onboarding_1.png',
                fit: BoxFit.cover,
                alignment: const Alignment(0, -0.2),
              ),
            ),
          ],
        );
      case 1:
        return Stack(
          children: [
            Positioned(
              top: 10,
              right: 20,
              bottom: 10,
              left: 10,
              child: Image.asset(
                'assets/images/onboarding_2.png',
                fit: BoxFit.cover,
                alignment: const Alignment(0, -0.2),
              ),
            ),
          ],
        );
      default:
        return Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/onboarding_3.png',
                fit: BoxFit.cover,
                alignment: const Alignment(0, -0.2),
              ),
            ),
          ],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final lastPage = _page == _pages.length - 1;
    return Scaffold(
      backgroundColor: kBackground,
      body: SafeArea(
        child: PageView.builder(
          controller: _controller,
          itemCount: _pages.length,
          onPageChanged: (value) => setState(() => _page = value),
          itemBuilder: (context, index) {
            final page = _pages[index];
            return Padding(
              padding: const EdgeInsets.fromLTRB(28, 12, 28, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    page.$1,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 29.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    page.$2,
                    style: const TextStyle(color: Colors.white60, height: 1.5),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: List.generate(
                      _pages.length,
                      (dotIndex) => AnimatedContainer(
                        duration: const Duration(milliseconds: 180),
                        margin: const EdgeInsets.only(right: 6),
                        width: dotIndex == _page ? 20 : 7,
                        height: 7,
                        decoration: BoxDecoration(
                          color: dotIndex == _page ? kBlue : Colors.white30,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 14.h),
                  FilledButton(
                    onPressed: () {
                      if (lastPage) {
                        replaceScreen(context, const LoginScreen());
                      } else {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.easeOut,
                        );
                      }
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: kBlue,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(16),
                    ),
                    child: Icon(lastPage ? Icons.check : Icons.arrow_forward),
                  ),
                  const Spacer(),

                  Expanded(flex: 5, child: _buildOnboardingImage(index)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
