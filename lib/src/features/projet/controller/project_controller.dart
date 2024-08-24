import 'dart:async';

import 'package:contribution_manager/src/features/projet/repository/project_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProjectNotifier extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {}

  createProject(name, startDate, dueDate) async {
    final projectRepository = ref.watch(projectRepositoryProvider);
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => projectRepository.createProject(name, startDate, dueDate));
  }
}
