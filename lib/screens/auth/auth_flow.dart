import 'dart:async';

import 'package:flutter/material.dart';
import 'package:music_app/widgets/common/bottom_nav_bar.dart';

const _background = Color(0xff120f16);
const _blue = Color(0xff2ba2f7);

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      if (mounted) _replace(context, const OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      body: Center(
        child: const Icon(Icons.music_note_rounded, color: _blue, size: 88),
      ),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _page = 0;

  static const _pages = [
    ('Music for your wellbeing', 'Listen to music that matches your mood and makes every moment feel better.'),
    ('Rhythms based on your needs', 'Find playlists and sounds created for focus, energy, and calm.'),
    ('Playlist to boost your energy', 'Build your own collection and keep your favorite music close.'),
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lastPage = _page == _pages.length - 1;
    return Scaffold(
      backgroundColor: _background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: _pages.length,
                onPageChanged: (value) => setState(() => _page = value),
                itemBuilder: (context, index) {
                  final page = _pages[index];
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(28, 24, 28, 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.music_note_rounded, color: _blue, size: 32),
                        const SizedBox(height: 20),
                        Text(page.$1, style: const TextStyle(color: Colors.white, fontSize: 29, fontWeight: FontWeight.w700)),
                        const SizedBox(height: 10),
                        Text(page.$2, style: const TextStyle(color: Colors.white60, height: 1.5)),
                        const Spacer(),
                        Expanded(
                          flex: 5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: Image.asset('assets/images/artist4.jpg', width: double.infinity, fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 8, 28, 28),
              child: Row(
                children: [
                  Row(
                    children: List.generate(_pages.length, (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 180),
                      margin: const EdgeInsets.only(right: 6),
                      width: index == _page ? 20 : 7,
                      height: 7,
                      decoration: BoxDecoration(color: index == _page ? _blue : Colors.white30, borderRadius: BorderRadius.circular(10)),
                    )),
                  ),
                  const Spacer(),
                  FilledButton(
                    onPressed: () {
                      if (lastPage) {
                        _replace(context, const LoginScreen());
                      } else {
                        _controller.nextPage(duration: const Duration(milliseconds: 250), curve: Curves.easeOut);
                      }
                    },
                    style: FilledButton.styleFrom(backgroundColor: _blue, shape: const CircleBorder(), padding: const EdgeInsets.all(16)),
                    child: Icon(lastPage ? Icons.check : Icons.arrow_forward),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _AuthScaffold(
      title: 'Welcome Back',
      subtitle: 'Log in to continue your music journey.',
      fields: const [
        _Field.email(),
        _Field.password(),
      ],
      primaryLabel: 'Login',
      onPrimary: () => _replace(context, const BottomNavBar()),
      footer: _AuthFooter(
        question: 'Don’t have an account?',
        action: 'Sign up',
        onTap: () => _push(context, const SignupScreen()),
      ),
    );
  }
}

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _AuthScaffold(
      title: 'Create New Account',
      subtitle: 'Sign up and make every playlist yours.',
      fields: const [
        _Field.name(),
        _Field.email(),
        _Field.password(),
        _Field.confirmPassword(),
      ],
      primaryLabel: 'Sign up',
      onPrimary: () => _push(context, const ConfirmPhoneScreen()),
      footer: _AuthFooter(
        question: 'Already have an account?',
        action: 'Login',
        onTap: () => Navigator.pop(context),
      ),
    );
  }
}

class ConfirmPhoneScreen extends StatelessWidget {
  const ConfirmPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Card(
            color: const Color(0xff211e25),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                const Icon(Icons.phone_iphone_rounded, color: _blue, size: 44),
                const SizedBox(height: 16),
                const Text('Verify your email address', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const Text('We will send a confirmation code to your email.', textAlign: TextAlign.center, style: TextStyle(color: Colors.white60)),
                const SizedBox(height: 20),
                FilledButton(onPressed: () => _replace(context, const OtpScreen()), style: FilledButton.styleFrom(backgroundColor: _blue), child: const Text('Continue')),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const Spacer(),
            const Icon(Icons.lock_person_outlined, color: _blue, size: 62),
            const SizedBox(height: 24),
            const Text('Enter OTP', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('A verification code was sent to your email.', textAlign: TextAlign.center, style: TextStyle(color: Colors.white60)),
            const SizedBox(height: 28),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: List.generate(4, (_) => const SizedBox(width: 52, child: TextField(textAlign: TextAlign.center, maxLength: 1, keyboardType: TextInputType.number, style: TextStyle(color: Colors.white, fontSize: 22), decoration: InputDecoration(counterText: ''))))),
            const SizedBox(height: 28),
            FilledButton(onPressed: () => _replace(context, const AccountCreatedScreen()), style: FilledButton.styleFrom(backgroundColor: _blue, minimumSize: const Size.fromHeight(50)), child: const Text('Verify')),
            const Spacer(flex: 2),
          ]),
        ),
      ),
    );
  }
}

class AccountCreatedScreen extends StatelessWidget {
  const AccountCreatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Container(width: 92, height: 92, decoration: const BoxDecoration(color: _blue, shape: BoxShape.circle), child: const Icon(Icons.check, color: Colors.white, size: 52)),
            const SizedBox(height: 24),
            const Text('Account Created\nSuccessfully', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const Text('Your account has been created successfully.', textAlign: TextAlign.center, style: TextStyle(color: Colors.white60)),
            const SizedBox(height: 28),
            FilledButton(onPressed: () => _replace(context, const BottomNavBar()), style: FilledButton.styleFrom(backgroundColor: _blue, minimumSize: const Size.fromHeight(50)), child: const Text('Go to Home')),
          ]),
        ),
      ),
    );
  }
}

class _AuthScaffold extends StatefulWidget {
  final String title;
  final String subtitle;
  final List<_Field> fields;
  final String primaryLabel;
  final VoidCallback onPrimary;
  final Widget footer;
  const _AuthScaffold({required this.title, required this.subtitle, required this.fields, required this.primaryLabel, required this.onPrimary, required this.footer});

  @override
  State<_AuthScaffold> createState() => _AuthScaffoldState();
}

class _AuthScaffoldState extends State<_AuthScaffold> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      appBar: AppBar(backgroundColor: _background, elevation: 0, leading: Navigator.canPop(context) ? const BackButton(color: Colors.white) : null),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(28, 36, 28, 24),
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const Icon(Icons.music_note_rounded, color: _blue, size: 54),
            const SizedBox(height: 38),
            Text(widget.title, style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(widget.subtitle, style: const TextStyle(color: Colors.white60)),
            const SizedBox(height: 28),
            OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.apple, color: Colors.white), label: const Text('Login with Apple'), style: _socialStyle),
            const SizedBox(height: 12),
            OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.g_mobiledata, color: Colors.redAccent, size: 28), label: const Text('Login with Google'), style: _socialStyle),
            const SizedBox(height: 24),
            const Row(children: [Expanded(child: Divider(color: Colors.white24)), Padding(padding: EdgeInsets.symmetric(horizontal: 12), child: Text('or continue with email', style: TextStyle(color: Colors.white38))), Expanded(child: Divider(color: Colors.white24))]),
            const SizedBox(height: 24),
            Form(
              key: _formKey,
              child: Column(
                children: widget.fields
                    .map((field) => Padding(
                          padding: const EdgeInsets.only(bottom: 14),
                          child: field,
                        ))
                    .toList(),
              ),
            ),
            Align(alignment: Alignment.centerRight, child: TextButton(onPressed: () {}, child: const Text('Forgot Password?', style: TextStyle(color: _blue)))),
            const SizedBox(height: 10),
            FilledButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) widget.onPrimary();
              },
              style: FilledButton.styleFrom(backgroundColor: _blue, minimumSize: const Size.fromHeight(52)),
              child: Text(widget.primaryLabel),
            ),
            const SizedBox(height: 18),
            widget.footer,
          ]),
        ),
      ),
    );
  }
}

final _socialStyle = OutlinedButton.styleFrom(foregroundColor: Colors.white, side: const BorderSide(color: Color(0xff39343e)), minimumSize: const Size.fromHeight(52));

class _Field extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool obscure;
  final _FieldType type;

  const _Field._({required this.label, required this.icon, required this.type, this.obscure = false});

  const _Field.name()
      : this._(label: 'Full name', icon: Icons.person_outline, type: _FieldType.name);

  const _Field.email()
      : this._(label: 'Email address', icon: Icons.email_outlined, type: _FieldType.email);

  const _Field.password()
      : this._(label: 'Password', icon: Icons.lock_outline, type: _FieldType.password, obscure: true);

  const _Field.confirmPassword()
      : this._(label: 'Confirm password', icon: Icons.lock_outline, type: _FieldType.password, obscure: true);

  @override
  Widget build(BuildContext context) => TextFormField(
    obscureText: obscure,
    style: const TextStyle(color: Colors.white),
    keyboardType: type == _FieldType.email ? TextInputType.emailAddress : TextInputType.text,
    validator: (value) {
      final text = value?.trim() ?? '';
      if (text.isEmpty) return '$label is required';
      if (type == _FieldType.email && !RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$').hasMatch(text)) {
        return 'Enter a valid email address';
      }
      if (type == _FieldType.password && text.length < 6) {
        return 'Password must be at least 6 characters';
      }
      return null;
    },
    decoration: InputDecoration(labelText: label, labelStyle: const TextStyle(color: Colors.white54), prefixIcon: Icon(icon, color: Colors.white54), filled: true, fillColor: const Color(0xff19161d), border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Color(0xff39343e))), enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Color(0xff39343e)))),
  );
}

enum _FieldType { name, email, password }

class _AuthFooter extends StatelessWidget {
  final String question;
  final String action;
  final VoidCallback onTap;
  const _AuthFooter({required this.question, required this.action, required this.onTap});

  @override
  Widget build(BuildContext context) => Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text(question, style: const TextStyle(color: Colors.white60)), TextButton(onPressed: onTap, child: Text(action, style: const TextStyle(color: _blue)))]);
}

void _push(BuildContext context, Widget page) => Navigator.push(context, MaterialPageRoute(builder: (_) => page));
void _replace(BuildContext context, Widget page) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => page));
