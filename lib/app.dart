import 'package:classwork4/screens/dashboard_screen.dart';
import 'package:classwork4/theme/my_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Font and Theme',
      theme: getApplicationTheme(),

      home: const DashboardScreen(),
    );
  }
}
