import 'package:contribution_manager/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

import 'features/projet/screens/project_list_screen.dart';

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
          child: ProjectListScreen(),
        ),
      ),
    );
  }
}
