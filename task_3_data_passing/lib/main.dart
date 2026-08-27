import 'package:flutter/material.dart';
import 'screens/user_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Users App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF7F7F7),
        fontFamily: 'Arial',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff7B2CBF),
        ),
      ),
      home: UserListScreen(),
    );
  }
}