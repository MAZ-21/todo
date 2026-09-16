import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/feature/create_task/data/repo/task_repo.dart';
import 'task_list_state.dart';

class TaskListCubit extends Cubit<TaskListState> {
  final TaskRepository _repository;
  StreamSubscription? _subscription;

  TaskListCubit(this._repository) : super(TaskListState()) {
    _subscription = _repository.getTasks().listen(
      (tasks) => emit(state.copyWith(isLoading: false, tasks: tasks)),
      onError: (e) =>
          emit(state.copyWith(isLoading: false, errorMessage: e.toString())),
    );
  }

  Future<void> deleteTask(String taskId) async {
    try {
      await _repository.deleteTask(taskId);
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
