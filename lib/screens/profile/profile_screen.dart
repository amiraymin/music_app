import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/screens/premium/premium_plans_screen.dart';
import 'package:music_app/screens/legal/terms_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryBlue = Color(0xFF2CA2F8);
    const backgroundColor = Color(0xFF120F16);
    const accentGreen = Color(0xFF56B994);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'My Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.h),

              Center(
                child: Container(
                  width: 80.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(color: primaryBlue, width: 2.w),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=300',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 14.h),

              Center(
                child: Text(
                  'John Watson',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 20.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStatItem('200', 'Followers'),
                  _buildDivider(),
                  _buildStatItem('34', 'Following'),
                  _buildDivider(),
                  _buildStatItem('190', 'Likes'),
                ],
              ),

              SizedBox(height: 24.h),

              
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PremiumPlansScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Get Premium',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 28.h),

              Text(
                'My Playlists',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 16.h),

            
              _buildPlaylistItem(
                imageUrl:
                    'https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?q=80&w=200',
                title: 'Hindi Pop Hits',
                songCount: '50 Songs',
              ),
              _buildPlaylistItem(
                imageUrl:
                    'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?q=80&w=200',
                title: 'Bollywood Hits',
                songCount: '30 Songs',
              ),
              _buildPlaylistItem(
                imageUrl:
                    'https://images.unsplash.com/photo-1470225620780-dba8ba36b745?q=80&w=200',
                title: 'Punjabi Hits',
                songCount: '80 Songs',
              ),

              SizedBox(height: 12.h),

      
              InkWell(
                borderRadius: BorderRadius.circular(12.r),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TermsAndConditionsScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.0.h,
                    horizontal: 4.0.w,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            text: 'By continuing you agree to our ',
                            style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.7),
                              fontSize: 13.sp,
                            ),
                            children: const [
                              TextSpan(
                                text: 'Terms of Service',
                                style: TextStyle(
                                  color: accentGreen,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(text: ' and '),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                  color: accentGreen,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(text: '.'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white54,
                        size: 16.r,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20.h),

          
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: OutlinedButton.icon(
                  onPressed: () => _confirmLogout(context),
                  icon: Icon(Icons.logout_rounded, size: 20.r),
                  label: Text('Log out', style: TextStyle(fontSize: 15.sp)),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.redAccent,
                    side: const BorderSide(color: Colors.redAccent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _confirmLogout(BuildContext context) async {
    final logout = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: const Color(0xff211e25),
        title: Text('Log out?', style: TextStyle(color: Colors.white, fontSize: 18.sp)),
        content: Text(
          'You will need to log in again to access your account.',
          style: TextStyle(color: Colors.white70, fontSize: 14.sp),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, true),
            child: const Text(
              'Log out',
              style: TextStyle(color: Colors.redAccent),
            ),
          ),
        ],
      ),
    );

    if (logout == true && context.mounted) {
      Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
    }
  }

  Widget _buildStatItem(String count, String label) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.6),
            fontSize: 13.sp,
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 24.h,
      width: 1.w,
      color: Colors.white.withValues(alpha: 0.15),
    );
  }

  Widget _buildPlaylistItem({
    required String imageUrl,
    required String title,
    required String songCount,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.0.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.network(
              imageUrl,
              width: 56.w,
              height: 56.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 14.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  songCount,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.6),
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.more_horiz, color: Colors.white70, size: 22.r),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}