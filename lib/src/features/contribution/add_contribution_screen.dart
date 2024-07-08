import 'package:flutter/material.dart';

class AddContributionScreen extends StatelessWidget {
  const AddContributionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            DropdownButton(items: const [], onChanged: (onChanged) {}),
            DropdownButton(items: const [], onChanged: (onChanged) {}),
            TextFormField(),
            ElevatedButton(onPressed: () {}, child: const Text('Enregistrer')),
          ],
        ),
      ),
    );
  }
}
