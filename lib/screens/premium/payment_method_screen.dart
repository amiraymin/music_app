import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'order_review_screen.dart'; // import الشاشة الجديدة

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int selectedMethod = 0; // 0: Credit Card, 1: Paypal, 2: Google Pay

  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();

  @override
  void dispose() {
    cardNumberController.dispose();
    expiryController.dispose();
    cvvController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const primaryBlue = Color(0xFF2CA2F8);
    const backgroundColor = Color(0xFF120F16);
    const cardBackgroundColor = Color(0xFF1E1C24);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Payment Method',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 20.h),

                    InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () => setState(() => selectedMethod = 0),
                      child: Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: cardBackgroundColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Icon(
                              Icons.credit_card_outlined,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                          SizedBox(width: 14.w),
                          Expanded(
                            child: Text(
                              'Dabit/Credit Card',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          _buildRadioButton(selectedMethod == 0, primaryBlue),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.h),

                    if (selectedMethod == 0) ...[
                      _buildInputField(
                        controller: cardNumberController,
                        hintText: 'Card Number',
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 12.h),
                      Row(
                        children: [
                          Expanded(
                            child: _buildInputField(
                              controller: expiryController,
                              hintText: 'Expiry Date',
                              keyboardType: TextInputType.datetime,
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Expanded(
                            child: _buildInputField(
                              controller: cvvController,
                              hintText: 'CVV',
                              keyboardType: TextInputType.number,
                              obscureText: true,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                    ],

                    InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () => setState(() => selectedMethod = 1),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                color: cardBackgroundColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child:  Center(
                                child: Text(
                                  'P',
                                  style: TextStyle(
                                    color: Color(0xFF0079C1),
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w900,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 14.w),
                             Expanded(
                              child: Text(
                                'Paypal',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            _buildRadioButton(selectedMethod == 1, primaryBlue),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 12.h),

                    InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () => setState(() => selectedMethod = 2),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                color: cardBackgroundColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: CustomPaint(
                                  size: const Size(20, 20),
                                  painter: GoogleLogoPainter(),
                                ),
                              ),
                            ),
                            SizedBox(width: 14.w),
                             Expanded(
                              child: Text(
                                'Google Pay',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            _buildRadioButton(selectedMethod == 2, primaryBlue),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrderReviewScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                  ),
                  child:  Text(
                    'Pay Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRadioButton(bool isSelected, Color activeColor) {
    return Container(
      width: 22,
      height: 22,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? activeColor : Colors.white30,
          width: 2,
        ),
      ),
      child: isSelected
          ? Center(
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: activeColor,
                  shape: BoxShape.circle,
                ),
              ),
            )
          : null,
    );
  }

  Widget _buildInputField({
    required TextEditingController controller,
    required String hintText,
    TextInputType keyboardType = TextInputType.text,
    bool obscureText = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1E1C24),
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        style: TextStyle(color: Colors.white, fontSize: 14.sp),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white38, fontSize: 14.sp),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
        ),
      ),
    );
  }
}

class GoogleLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double width = size.width;
    final double height = size.height;

    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = width * 0.22;

    final Rect rect = Rect.fromLTWH(0, 0, width, height);

    paint.color = const Color(0xFFEA4335);
    canvas.drawArc(rect, 3.8, 1.3, false, paint);

    paint.color = const Color(0xFFFBBC05);
    canvas.drawArc(rect, 2.35, 1.45, false, paint);

    paint.color = const Color(0xFF34A853);
    canvas.drawArc(rect, 0.7, 1.65, false, paint);

    paint.color = const Color(0xFF4285F4);
    canvas.drawArc(rect, -0.4, 1.1, false, paint);

    final Paint barPaint = Paint()
      ..color = const Color(0xFF4285F4)
      ..style = PaintingStyle.fill;

    canvas.drawRect(
      Rect.fromLTWH(width * 0.45, height * 0.39, width * 0.55, height * 0.22),
      barPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
