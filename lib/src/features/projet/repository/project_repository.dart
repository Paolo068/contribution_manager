import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/logger.dart';

final projectRepositoryProvider = Provider<ProjectRepository>((ref) {
  return ProjectRepository(firestore: FirebaseFirestore.instance);
});

class ProjectRepository {
  final FirebaseFirestore _firestore;
  ProjectRepository({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  Future<void> createProject(
    String name,
    startDate,
    dueDate,
  ) async {
    try {
      await _firestore.collection('projects').add({
        'name': name,
        'dueDate': dueDate,
        'startDate': startDate,
      });
    } catch (e) {
      logErr(e);
    }
  }
}
