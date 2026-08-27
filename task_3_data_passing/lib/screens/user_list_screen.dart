import 'package:flutter/material.dart';

import '../models/user.dart';
import '../widgets/user_card.dart';
import 'user_details_screen.dart';

class UserListScreen extends StatelessWidget {
  UserListScreen({super.key});

  final List<User> users = [
    User(
      name: 'Ahmed Tarek',
      phone: '+20 123 456 7890',
      email: 'ahmed.tarek@email.com',
      imageUrl: 'https://randomuser.me/api/portraits/men/32.jpg',
    ),
    User(
      name: 'Sara Ali',
      phone: '+20 109 876 5432',
      email: 'sara.ali@email.com',
      imageUrl: 'https://randomuser.me/api/portraits/women/44.jpg',
    ),
    User(
      name: 'Omar Hassan',
      phone: '+20 115 667 7889',
      email: 'omar.hassan@email.com',
      imageUrl: 'https://randomuser.me/api/portraits/men/75.jpg',
    ),
    User(
      name: 'Nour Mohamed',
      phone: '+20 100 334 4556',
      email: 'nour.mohamed@email.com',
      imageUrl: 'https://randomuser.me/api/portraits/women/65.jpg',
    ),
    User(
      name: 'Khaled Ahmed',
      phone: '+20 101 223 3445',
      email: 'khaled.ahmed@email.com',
      imageUrl: 'https://randomuser.me/api/portraits/men/46.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: SafeArea(
        child: Column(
          children: [
            // Screen Title
            const SizedBox(height: 12),

            const Text(
              'Screen 1 - User List',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff202020),
              ),
            ),

            const SizedBox(height: 12),

            // Users Container
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 8,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 8,
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
                    for (int i = 0; i < users.length; i++) ...[
                      Expanded(
                        child: UserCard(
                          user: users[i],
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return UserDetailsScreen(
                                    user: users[i],
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ),

                      // Divider between users
                      if (i != users.length - 1)
                        const Divider(
                          height: 1,
                          thickness: 1,
                          color: Color(0xffEEEEEE),
                        ),
                    ],
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