import 'package:flutter/material.dart';

const kBackground = Color(0xff120f16);
const kBlue = Color(0xff2ba2f7);

final kSocialStyle = OutlinedButton.styleFrom(
  foregroundColor: Colors.white,
  side: const BorderSide(color: Color(0xff39343e)),
  minimumSize: const Size.fromHeight(52),
);

void pushScreen(BuildContext context, Widget page) =>
    Navigator.push(context, MaterialPageRoute(builder: (_) => page));

void replaceScreen(BuildContext context, Widget page) =>
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => page));

class AuthScaffold extends StatefulWidget {
  final String title;
  final String subtitle;
  final List<AuthField> fields;
  final String primaryLabel;
  final VoidCallback onPrimary;
  final Widget footer;
  final bool showSocialLogin;

  const AuthScaffold({
    super.key,
    required this.title,
    required this.subtitle,
    required this.fields,
    required this.primaryLabel,
    required this.onPrimary,
    required this.footer,
    this.showSocialLogin = false,
  });

  @override
  State<AuthScaffold> createState() => _AuthScaffoldState();
}

class _AuthScaffoldState extends State<AuthScaffold> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        backgroundColor: kBackground,
        elevation: 0,
        leading: Navigator.canPop(context)
            ? const BackButton(color: Colors.white)
            : null,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(28, 36, 28, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: SizedBox(
                  width: 115,
                  height: 96,
                  child: Image.asset('assets/images/music_logo.png'),
                ),
              ),
              const SizedBox(height: 38),
              Text(
                widget.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white60),
              ),
              const SizedBox(height: 28),
              if (widget.showSocialLogin) ...[
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.apple, color: Colors.white),
                  label: const Text('Login with Apple'),
                  style: kSocialStyle,
                ),
                const SizedBox(height: 16),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Text(
                    'G',
                    style: TextStyle(
                      color: Color(0xff4285F4),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  label: const Text('Login with Google'),
                  style: kSocialStyle,
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Expanded(child: Divider(color: Colors.white24)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        'Or continue with social account',
                        style: TextStyle(color: Colors.white38),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.white24)),
                  ],
                ),
              ],
              const SizedBox(height: 24),
              Form(
                key: _formKey,
                child: Column(
                  children: widget.fields
                      .map(
                        (field) => Padding(
                          padding: const EdgeInsets.only(bottom: 14),
                          child: field,
                        ),
                      )
                      .toList(),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: kBlue),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) widget.onPrimary();
                },
                style: FilledButton.styleFrom(
                  backgroundColor: kBlue,
                  minimumSize: const Size.fromHeight(52),
                ),
                child: Text(widget.primaryLabel),
              ),
              const SizedBox(height: 18),
              widget.footer,
            ],
          ),
        ),
      ),
    );
  }
}

enum AuthFieldType { name, email, password }

class AuthField extends StatefulWidget {
  final String label;
  final IconData icon;
  final bool obscure;
  final AuthFieldType type;
  final TextEditingController? controller;
  final TextEditingController? matchingPasswordController;

  const AuthField._({
    required this.label,
    required this.icon,
    required this.type,
    this.obscure = false,
    this.controller,
    this.matchingPasswordController,
  });

  const AuthField.name()
    : this._(
        label: 'Full name',
        icon: Icons.person_outline,
        type: AuthFieldType.name,
      );

  const AuthField.email()
    : this._(
        label: 'Email address',
        icon: Icons.email_outlined,
        type: AuthFieldType.email,
      );

  const AuthField.password({TextEditingController? controller})
    : this._(
        label: 'Password',
        icon: Icons.lock_outline,
        type: AuthFieldType.password,
        obscure: true,
        controller: controller,
      );

  const AuthField.confirmPassword({
    required TextEditingController passwordController,
  }) : this._(
         label: 'Confirm password',
         icon: Icons.lock_outline,
         type: AuthFieldType.password,
         obscure: true,
         matchingPasswordController: passwordController,
       );
  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  late bool _obscured = widget.obscure;

  @override
  Widget build(BuildContext context) {
    final isPassword = widget.type == AuthFieldType.password;
    return TextFormField(
      controller: widget.controller,
      obscureText: isPassword ? _obscured : false,
      style: const TextStyle(color: Colors.white),
      keyboardType: widget.type == AuthFieldType.email
          ? TextInputType.emailAddress
          : TextInputType.text,
      validator: (value) {
        final text = value?.trim() ?? '';
        if (text.isEmpty) return '${widget.label} is required';
        if (widget.type == AuthFieldType.email &&
            !RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$').hasMatch(text)) {
          return 'Enter a valid email address';
        }
        if (isPassword && text.length < 6) {
          return 'Password must be at least 6 characters';
        }
        if (widget.matchingPasswordController != null &&
            text != widget.matchingPasswordController!.text) {
          return 'Passwords do not match';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: const TextStyle(color: Colors.white54),
        prefixIcon: Icon(widget.icon, color: Colors.white54),
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  _obscured
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: Colors.white54,
                ),
                onPressed: () => setState(() => _obscured = !_obscured),
              )
            : null,
        filled: true,
        fillColor: const Color(0xff19161d),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xff39343e)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xff39343e)),
        ),
      ),
    );
  }
}

class AuthFooter extends StatelessWidget {
  final String question;
  final String action;
  final VoidCallback onTap;
  const AuthFooter({
    super.key,
    required this.question,
    required this.action,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(question, style: const TextStyle(color: Colors.white60)),
      TextButton(
        onPressed: onTap,
        child: Text(action, style: const TextStyle(color: kBlue)),
      ),
    ],
  );
}
