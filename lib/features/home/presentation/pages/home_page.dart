import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/dashed_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background Glows
          Positioned(
            top: -100,
            right: -100,
            child: _buildGlow(300, AppColors.glowTeal.withOpacity(0.3)),
          ),
          Positioned(
            bottom: 300,
            left: -150,
            child: _buildGlow(400, AppColors.glowTeal.withOpacity(0.2)),
          ),

          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24, top: 40, bottom: 20),
                  child: Text(
                    'LOOKING\nFOR FRIENDS',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.1,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                
                // Avatar Cluster
                Expanded(
                  child: Stack(
                    children: [
                      // Robot 1 (Top Left area)
                      Positioned(
                        top: 40,
                        left: 40,
                        child: _buildAvatarCircle(110, 'assets/images/robot_1.png'),
                      ),
                      // Person (Top Center/Right)
                      Positioned(
                        top: 10,
                        right: 40,
                        child: _buildAvatarCircle(130, 'assets/images/person.png'),
                      ),
                      // Robot 2 (Center Right)
                      Positioned(
                        bottom: 120,
                        right: 20,
                        child: _buildAvatarCircle(120, 'assets/images/robot_2.png'),
                      ),
                      // Robot 3 (Bottom Center) - Using avatar 1 again for variety or a different crop
                      Positioned(
                        bottom: 40,
                        left: 90,
                        child: _buildAvatarCircle(90, 'assets/images/robot_1.png'),
                      ),
                    ],
                  ),
                ),

                // Bottom Interface Card
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(24),
                  padding: const EdgeInsets.all(28),
                  decoration: BoxDecoration(
                    color: const Color(0xFF040F11),
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.white.withOpacity(0.05)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Trixie Perez',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Canada',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF8F9E9F),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          _buildDashedTag('Compassion'),
                          _buildDashedTag('Mindful Listening'),
                          _buildDashedTag('Publications'),
                          _buildDashedTag('Drafting'),
                          _buildDashedTag('Drafting'),
                        ],
                      ),
                      const SizedBox(height: 32),
                      PrimaryButton(
                        text: 'Start Chat',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGlow(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color,
            blurRadius: 100,
            spreadRadius: 50,
          ),
        ],
      ),
    );
  }

  Widget _buildAvatarCircle(double size, String assetPath) {
    return Container(
      width: size,
      height: size,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            AppColors.primaryCyan.withOpacity(0.4),
            Colors.transparent,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ClipOval(
        child: Image.asset(
          assetPath,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: Colors.grey[900],
              child: const Icon(Icons.person, color: Colors.white),
            );
          },
        ),
      ),
    );
  }

  Widget _buildDashedTag(String text) {
    return DashedContainer(
      color: const Color(0xFF1F3F45),
      borderRadius: 20,
      strokeWidth: 1.2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xFF8F9E9F),
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
