import 'package:flutter/material.dart';
import 'screens/business_card_screen.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Business Card',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const BusinessCardScreen(),
    );
  }
}