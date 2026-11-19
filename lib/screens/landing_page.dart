import 'package:material_ui/material_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qweqwe_ui/qweqwe_ui.dart';

@RoutePage()
class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        titleSpacing: 30,
        title: Text(
          'Stone Stellar',
          style: AppTypography.title2Semibold.copyWith(
            color: AppColors.accent,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Center(
              child: ClipOval(
                child: Image.asset(
                  'assets/123.png', 
                  width: 35,
                  height: 35, 
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          children: [
            _buildCard(
              title: 'Schedule',
              description: 'Easily schedule combat games and invite your friends to join.',
              icon: Icons.calendar_today,
            ),
            const SizedBox(height: 16),
            _buildCard(
              title: 'Meditation',
              description: '10 min of quick calm breaks and breathing exercises can help you focus.',
              icon: Icons.self_improvement,
            ),
            const SizedBox(height: 16),
            _buildCard(
              title: 'Discover Combats',
              description: 'Find and watch live combats, meet new gamers and get tips.',
              icon: Icons.travel_explore,
            ),
            const SizedBox(height: 16),
            _buildCard(
              title: 'Message Players',
              description: 'Connect and chat with fellow gamers to form teams.',
              icon: Icons.chat_bubble_outline,
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.accent,
        elevation: 0,
        shape: const CircleBorder(),
        child: ClipOval(
          child: Image.asset(
            'assets/123.png', 
            width: 40, 
            height: 40, 
            fit: BoxFit.cover,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.accent,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavIcon(Icons.bar_chart, 'Statistics'),
              _buildNavIcon(Icons.search, 'Discover'),
              const SizedBox(width: 40),
              _buildNavIcon(Icons.chat, 'Chat'),
              _buildNavIcon(Icons.person, 'Profile'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({required String title, required String description, required IconData icon}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.accent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTypography.title3Semibold.copyWith(
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: AppTypography.caption2.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Icon(
            icon,
            size: 50,
            color: AppColors.white.withValues(alpha: 0.5),
          ),
        ],
      ),
    );
  }

  Widget _buildNavIcon(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: AppColors.white),
        const SizedBox(height: 4),
        Text(
          label,
          style: AppTypography.captionMini.copyWith(color: AppColors.white),
        )
      ],
    );
  }
}