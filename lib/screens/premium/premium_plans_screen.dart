import 'package:flutter/material.dart';
import 'payment_method_screen.dart'; // import الشاشة الجديدة

class PremiumPlansScreen extends StatefulWidget {
  const PremiumPlansScreen({super.key});

  @override
  State<PremiumPlansScreen> createState() => _PremiumPlansScreenState();
}

class _PremiumPlansScreenState extends State<PremiumPlansScreen> {
  int selectedPlanIndex = 1; // 0: Elite Plan, 1: Premium Plan

  @override
  Widget build(BuildContext context) {
    const primaryBlue = Color(0xFF2CA2F8);

    return Scaffold(
      backgroundColor: const Color(0xFF120F16),
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
        title: const Text(
          'Premium Plans',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 12),

                      // Header Text
                      const Text(
                        'Get Premium Plans',
                        style: TextStyle(
                          color: primaryBlue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Enjoy listing songs with better audio\nquality and without ads',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 13,
                          height: 1.4,
                        ),
                      ),

                      const SizedBox(height: 28),

                      // Elite Plan Card
                      _buildPlanCard(
                        index: 0,
                        title: 'Elite Plan',
                        price: '\$20.99',
                        features: [
                          'Unlimited Songs',
                          'Add Free Music not Included',
                          'Unlimited Skips',
                        ],
                      ),

                      const SizedBox(height: 20),

                      // Premium Plan Card
                      _buildPlanCard(
                        index: 1,
                        title: 'Premium Plan',
                        price: '\$35.99',
                        features: [
                          'Unlimited Songs',
                          'Add Free Music',
                          'Unlimited Download',
                        ],
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),

              // Select Plan Button
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      // الانتقال لصفحة PaymentMethodScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentMethodScreen(),
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
                    child: const Text(
                      'Select Plan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPlanCard({
    required int index,
    required String title,
    required String price,
    required List<String> features,
  }) {
    final isSelected = selectedPlanIndex == index;
    final cardColor =
        isSelected ? const Color(0xFF2CA2F8) : const Color(0xFF1E1C24);
    final crownColor = isSelected
        ? Colors.white.withOpacity(0.25)
        : Colors.white.withOpacity(0.08);

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPlanIndex = index;
        });
      },
      child: Container(
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: isSelected ? Colors.transparent : Colors.white10,
            width: 1,
          ),
        ),
        child: Stack(
          children: [
            // Crown Outline Background Icon
            Positioned(
              right: -30,
              bottom: -20,
              child: CustomPaint(
                size: const Size(210, 210),
                painter: CrownOutlinePainter(color: crownColor),
              ),
            ),

            // Card Content
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    price,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ...features.map(
                    (feature) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          Container(
                            width: 4,
                            height: 4,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            feature,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'See All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white.withOpacity(0.9),
                        size: 16,
                      ),
                    ],
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

// رسم شعار التاج المفرغ (Crown Outline)
class CrownOutlinePainter extends CustomPainter {
  final Color color;

  CrownOutlinePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 12.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final path = Path();
    final w = size.width;
    final h = size.height;

    // Crown Outer Path
    path.moveTo(w * 0.15, h * 0.82);
    path.lineTo(w * 0.05, h * 0.35);
    path.lineTo(w * 0.35, h * 0.52);
    path.lineTo(w * 0.50, h * 0.18);
    path.lineTo(w * 0.65, h * 0.52);
    path.lineTo(w * 0.95, h * 0.35);
    path.lineTo(w * 0.85, h * 0.82);
    path.close();

    // Inner Horizontal Bar
    path.moveTo(w * 0.30, h * 0.68);
    path.lineTo(w * 0.70, h * 0.68);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}