import 'package:flutter/material.dart';
import '../models/user.dart';

class UserDetailsScreen extends StatelessWidget {
  final User user;

  const UserDetailsScreen({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 12),

            const Text(
              'Screen 2 - User Details',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff202020),
              ),
            ),

            const SizedBox(height: 12),

            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 8,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 12,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),

                child: Column(
                  children: [
                    // Back Button
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Color(0xff171717),
                        ),
                      ),
                    ),

                    const SizedBox(height: 5),

                    // Profile Image
                    Container(
                      width: 185,
                      height: 185,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.network(
                          user.imageUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.person,
                              size: 100,
                              color: Colors.grey,
                            );
                          },
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Name
                    Text(
                      user.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff111111),
                      ),
                    ),

                    const SizedBox(height: 28),

                    // Phone + Email Card
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: const Color(0xffEEEEEE),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.04),
                            blurRadius: 8,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          _InfoRow(
                            icon: Icons.phone,
                            title: 'Phone',
                            value: user.phone,
                            iconBackground:
                                const Color(0xffF1E4FF),
                            iconColor: const Color(0xff7026C9),
                          ),

                          const Divider(
                            height: 1,
                            indent: 25,
                            endIndent: 25,
                            color: Color(0xffEEEEEE),
                          ),

                          _InfoRow(
                            icon: Icons.email,
                            title: 'Email',
                            value: user.email,
                            iconBackground:
                                const Color(0xffffe5e5),
                            iconColor: const Color(0xffE53935),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color iconBackground;
  final Color iconColor;

  const _InfoRow({
    required this.icon,
    required this.title,
    required this.value,
    required this.iconBackground,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 25,
      ),
      child: Row(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: iconBackground,
              borderRadius: BorderRadius.circular(17),
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 32,
            ),
          ),

          const SizedBox(width: 25),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff171717),
                  ),
                ),

                const SizedBox(height: 7),

                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xff4F5965),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}