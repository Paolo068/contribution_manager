import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/logger.dart';
import '../../../core/models/project_model.dart';

part 'project_repository.g.dart';

@riverpod
ProjectRepository projectRepository(Ref ref) => ProjectRepository(firestore: FirebaseFirestore.instance);

class ProjectRepository {
  final FirebaseFirestore _firestore;
  ProjectRepository({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  Future<void> createProject(
   {required ProjectModel project}
  ) async {
    try {
      await _firestore.collection('projects').add({
        'name': project.name,
        'dueDate': project.dueDate,
        'startDate': project.startDate,
        'description': project.description,
      });
    } catch (e) {
      logErr(e);
    }
  }
}
