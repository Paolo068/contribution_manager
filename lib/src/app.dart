import 'package:contribution_manager/src/core/theme/theme.dart';
import 'package:contribution_manager/src/features/auth/create_account_screen.dart';
import 'package:contribution_manager/src/features/projet/projet_list_screen.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: CreateAccountScreen(),
        ),
      ),
    );
  }
}
