import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/auth/auth_widgets.dart';
import 'account_created_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _controllers = List.generate(4, (_) => TextEditingController());
  bool _showOtpError = false;

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  bool get _hasFourDigits => _controllers.every(
    (controller) => RegExp(r'^\d$').hasMatch(controller.text),
  );

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: kBackground,
      insetPadding: const EdgeInsets.symmetric(horizontal: 28),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.lock_person_outlined, color: kBlue, size: 48),
            SizedBox(height: 16.h),
            Text(
              'Enter OTP',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.h),
            const Text(
              'A verification code was sent to your email.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white60),
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                4,
                (index) => SizedBox(
                  width: 48.w,
                  child: TextField(
                    controller: _controllers[index],
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (_) {
                      if (_showOtpError) setState(() => _showOtpError = false);
                    },
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      counterText: '',
                      contentPadding: const EdgeInsets.only(bottom: 8),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff39343e),
                          width: 2,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kBlue, width: 2),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.h),
            FilledButton(
              onPressed: () {
                if (!_hasFourDigits) {
                  setState(() => _showOtpError = true);
                  return;
                }
                Navigator.pop(context);
                showDialog(
                  context: context,
                  barrierColor: Colors.black.withOpacity(0.4),
                  builder: (context) => const AccountCreatedScreen(),
                );
              },
              style: FilledButton.styleFrom(
                backgroundColor: kBlue,
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text('Verify'),
            ),
            if (_showOtpError) ...[
              SizedBox(height: 8.h),
              Text(
                'Please enter the 4-digit verification code.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.redAccent, fontSize: 12.sp),
              ),
            ],
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Didn't receive the code? ",
                  style: TextStyle(color: Colors.white60),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Text(
                    'Resend (30s)',
                    style: TextStyle(color: kBlue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
