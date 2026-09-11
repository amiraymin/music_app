import 'package:flutter/material.dart';
import 'package:music_app/screens/premium/premium_plans_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryBlue = Color(0xFF2CA2F8);
    const backgroundColor = Color(0xFF120F16);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),

              // Profile Image with Border
              Center(
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: primaryBlue,
                      width: 2,
                    ),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=300',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 14),

              // User Name
              const Center(
                child: Text(
                  'John Watson',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Followers / Following / Likes Stats Row
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

              const SizedBox(height: 24),

              // Get Premium Button (بديل Edit Profile)
              SizedBox(
                width: double.infinity,
                height: 50,
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
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Get Premium',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 28),

              // My Playlists Section Title
              const Text(
                'My Playlists',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),

              // Playlists Items
              _buildPlaylistItem(
                imageUrl: 'https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?q=80&w=200',
                title: 'Hindi Pop Hits',
                songCount: '50 Songs',
              ),
              _buildPlaylistItem(
                imageUrl: 'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?q=80&w=200',
                title: 'Bollywood Hits',
                songCount: '30 Songs',
              ),
              _buildPlaylistItem(
                imageUrl: 'https://images.unsplash.com/photo-1470225620780-dba8ba36b745?q=80&w=200',
                title: 'Punjabi Hits',
                songCount: '80 Songs',
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Stat Item Builder
  Widget _buildStatItem(String count, String label) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  // Vertical Divider Builder
  Widget _buildDivider() {
    return Container(
      height: 24,
      width: 1,
      color: Colors.white.withOpacity(0.15),
    );
  }

  // Playlist Item Tile Builder
  Widget _buildPlaylistItem({
    required String imageUrl,
    required String title,
    required String songCount,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              width: 56,
              height: 56,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  songCount,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.white70,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}