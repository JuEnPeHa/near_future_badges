import 'package:flutter/material.dart';
import 'package:near_future_badges/badges_page.dart';
import 'package:near_future_badges/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NEAR Future Tickets',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: BadgesPage(title: 'NEAR Future Tickets - Badges'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
