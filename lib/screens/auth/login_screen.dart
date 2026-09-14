import 'package:flutter/material.dart';
import 'package:music_app/widgets/common/bottom_nav_bar.dart';

import '../../widgets/auth/auth_widgets.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      title: 'Welcome Back',
      subtitle: 'Log in to continue your music journey.',
      fields: const [AuthField.email(), AuthField.password()],
      primaryLabel: 'Login',
      showSocialLogin: true,
      onPrimary: () => replaceScreen(context, const BottomNavBar()),
      footer: AuthFooter(
        question: "Don't have an account?",
        action: 'Sign up',
        onTap: () => pushScreen(context, const SignupScreen()),
      ),
    );
  }
}
