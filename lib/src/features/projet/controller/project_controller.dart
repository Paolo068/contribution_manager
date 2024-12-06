import 'dart:async';

import 'package:contribution_manager/src/core/models/project_model.dart';
import 'package:contribution_manager/src/features/projet/repository/project_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_controller.g.dart';

@riverpod
class ProjectNotifier extends _$ProjectNotifier {
  @override
  Stream<ProjectModel> build() => Stream.value(ProjectModel());

  createProject({
    required ProjectModel project,
  }) async {
    final projectRepository = ref.read(projectRepositoryProvider);
    state = const AsyncValue.loading();
    // state = await AsyncValue.guard(() => projectRepository.createProject(project :project));
  }
}
