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
      insetPadding: EdgeInsets.symmetric(horizontal: 28.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      child: Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.lock_person_outlined, color: kBlue, size: 48.r),
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
            Text(
              'A verification code was sent to your email.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white60,
                fontSize: 14.sp,
              ),
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
                      contentPadding: EdgeInsets.only(bottom: 8.h),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color(0xff39343e),
                          width: 2.w,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kBlue, width: 2.w),
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
                minimumSize: Size.fromHeight(50.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              child: Text(
                'Verify',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            if (_showOtpError) ...[
              SizedBox(height: 8.h),
              Text(
                'Please enter the 4-digit verification code.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 12.sp,
                ),
              ),
            ],
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't receive the code? ",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 13.sp,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    'Resend (30s)',
                    style: TextStyle(
                      color: kBlue,
                      fontSize: 13.sp,
                    ),
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