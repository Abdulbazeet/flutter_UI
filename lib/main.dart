import 'package:flutter/material.dart';

import 'widgets/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Foundations',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF7357FF)),
        scaffoldBackgroundColor: const Color(0xFFF7F8FC),
        fontFamily: 'Inter',
      ),
      home: const MainPage(),
    );
  }
}
