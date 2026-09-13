import 'package:flutter/material.dart';
import '../../widgets/auth_widgets.dart';
import 'confirm_phone_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      title: 'Create New Account',
      subtitle: 'Sign up and make every playlist yours.',
      fields: [
        AuthField.name(),
        AuthField.email(),
        AuthField.password(controller: _passwordController),
        AuthField.confirmPassword(passwordController: _passwordController),
      ],
      primaryLabel: 'Sign up',
      onPrimary: () => showDialog(
        context: context,
        barrierColor: Colors.black.withOpacity(0.4),
        builder: (context) => const ConfirmPhoneScreen(),
      ),
      footer: AuthFooter(
        question: 'Already have an account?',
        action: 'Login',
        onTap: () => Navigator.pop(context),
      ),
    );
  }
}
