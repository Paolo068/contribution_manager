import 'package:flutter/material.dart';

import '../statistic/statistic_screen.dart';
import '../contribution/contribution_list_screen.dart';
import '../member/member_list_screen.dart';
import '../projet/projet_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final List<Widget> destinations = const [
    ProjetListScreen(),
    ContributionListScreen(),
    MemberListScreen(),
    StatisticScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: destinations,
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) => setState(() => selectedIndex = index),
    );
  }
}
