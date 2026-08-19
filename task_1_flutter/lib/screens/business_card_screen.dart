import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';
import '../data/player_data.dart';
import '../widgets/contact_card.dart';

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: Column(
          children: [
            // Player Image
            Container(
              width: 220,
              height: 220,
              padding: const EdgeInsets.all(7),

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.yellow,
                  width: 3,
                ),
              ),

              child: ClipOval(
                child: Image.network(
                  PlayerData.imageUrl,
                  fit: BoxFit.cover,

                  loadingBuilder: (
                    context,
                    child,
                    loadingProgress,
                  ) {
                    if (loadingProgress == null) {
                      return child;
                    }

                    return const Center(
                      child: CircularProgressIndicator(
                        color: AppColors.yellow,
                      ),
                    );
                  },

                  errorBuilder: (
                    context,
                    error,
                    stackTrace,
                  ) {
                    return const Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.grey,
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 8),

            // Name
            Text(
              PlayerData.name,
              style: GoogleFonts.caveatBrush(
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Profession
            const SizedBox(height: 2),

            Text(
              PlayerData.profession,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 22,
              ),
            ),

            const SizedBox(height: 12),

            // Divider
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 55,
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: AppColors.lightLine,
                      thickness: 1,
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Icon(
                      Icons.business_center,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),

                  const Expanded(
                    child: Divider(
                      color: AppColors.lightLine,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 14),

            // Contact Information
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Contact Information',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Contact Cards
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  ContactCard(
                    icon: Icons.phone,
                    text: PlayerData.phone,
                  ),

                  ContactCard(
                    icon: Icons.email,
                    text: PlayerData.email,
                  ),

                  ContactCard(
                    icon: Icons.person,
                    text: PlayerData.username,
                  ),
                ],
              ),
            ),

            const Spacer(),

            // Footer
            const Text(
              'Digital Business Card',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 15,
                letterSpacing: 1.2,
              ),
            ),

            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}