import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class ContactCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactCard({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: AppColors.lightCard,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 34,
            color: AppColors.purple,
          ),

          const SizedBox(width: 28),

          Expanded(
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: AppColors.purple,
                fontSize: 25,
                letterSpacing: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}