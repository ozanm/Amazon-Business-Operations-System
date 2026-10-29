import 'package:flutter/material.dart';
import '../features/dashboard/screens/dashboard_screen.dart';
import 'app_theme.dart';

class AmazonBusinessOperationsSystemApp extends StatelessWidget {
  const AmazonBusinessOperationsSystemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Business Operations System',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const DashboardScreen(),
    );
  }
}

