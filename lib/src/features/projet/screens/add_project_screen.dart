import 'package:contribution_manager/src/features/projet/widgets/add_project_form.dart';
import 'package:flutter/material.dart';

class AddProjectScreen extends StatelessWidget {
  const AddProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AddProjectForm(),
    );
  }
}
