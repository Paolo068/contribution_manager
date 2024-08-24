import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

import '../../../core/logger.dart';

class AddProjectForm extends StatefulWidget {
  const AddProjectForm({super.key});

  @override
  State<AddProjectForm> createState() => _AddProjectFormState();
}

class _AddProjectFormState extends State<AddProjectForm> {
  final _formKey = GlobalKey<FormBuilderState>();
  final nameCtrl = TextEditingController();
  String dueDate = '';
  final startDate = DateTime.now().toString();
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: FormBuilder(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Creer un nouveau projet de contribution', style: textTheme.headlineSmall),
              const Gap(40),
              FormBuilderTextField(
                controller: nameCtrl,
                name: 'name',
                decoration: const InputDecoration(labelText: 'Nom du Projet'),
                validator: FormBuilderValidators.required(),
              ),
              const Gap(20),
              FormBuilderDateTimePicker(
                inputType: InputType.date,
                onChanged: (value) {
                  dueDate = value.toString();
                  logInfo(dueDate);
                },
                format: DateFormat('dd MMM yyyy'),
                name: 'dueDate',
                decoration: const InputDecoration(labelText: 'Echeance du projet'),
                validator: FormBuilderValidators.dateTime(),
              ),
              const Gap(40),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // ref.read
                    // projectRepository.createProject(nameCtrl.text, dueDate, startDate);
                  }
                },
                child: const Text('Creer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
