import 'package:flutter/material.dart';

class ContributionWidget extends StatelessWidget {
  const ContributionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.monetization_on_sharp),
        Column(
          children: [
            Text('Encaisse par Jeanine'),
            Card(
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
