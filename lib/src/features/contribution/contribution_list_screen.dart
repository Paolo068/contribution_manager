import 'package:flutter/material.dart';

import 'add_contribution_screen.dart';
import 'contribution_widget.dart';

class ContributionListScreen extends StatelessWidget {
  const ContributionListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ? don't forget to change the add contribution icon with pigcoin
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const AddContributionScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),

      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
            child: const Column(children: [
              Text('Somme Totale'),
              Text('50,000 Fcfa'),
            ]),
          ),
          // Latest Contribution here: 10
          const ContributionWidget(),
        ],
      ),
    );
  }
}
