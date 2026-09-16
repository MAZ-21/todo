import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/feature/create_task/data/model/task_model.dart';
import 'package:todo/feature/create_task/data/repo/task_repo.dart';
import 'package:todo/feature/create_task/presentation/view_model/create_task_cubit/create_task_state.dart';

class CreateTaskCubit extends Cubit<CreateTaskState> {
  final TaskRepository _repository;

  CreateTaskCubit(this._repository) : super(CreateTaskState.initial());

  void loadForEdit(TaskModel task) {
    emit(state.copyWith(draft: task));
  }

  void titleChanged(String title) {
    emit(state.copyWith(draft: state.draft.copyWith(title: title)));
  }

  void timeChanged(String dueTime) {
    emit(state.copyWith(draft: state.draft.copyWith(dueTime: dueTime)));
  }

  void descriptionChanged(String description) {
    emit(state.copyWith(draft: state.draft.copyWith(description: description)));
  }

  void dueDateChanged(DateTime dueDate) {
    emit(state.copyWith(draft: state.draft.copyWith(dueDate: dueDate)));
  }

  void priorityChanged(String priority) {
    // emit(state.copyWith(draft: state.draft.copyWith(priority: )));
  }

  void categoryChanged(String category) {
    emit(state.copyWith(draft: state.draft.copyWith(category: category)));
  }

  String? _validate() {
    if (state.draft.title.trim().isEmpty) return 'Title is required';
    if (state.draft.category.trim().isEmpty) return 'Pick a category';
    return null;
  }

  Future<void> submit() async {
    final validationError = _validate();
    if (validationError != null) {
      emit(state.copyWith(errorMessage: validationError));
      return;
    }

    emit(state.copyWith(isSubmitting: true, errorMessage: null));
    try {
      final isEditing = state.draft.id.isNotEmpty;
      if (isEditing) {
        await _repository.updateTask(state.draft);
      } else {
        await _repository.addTask(state.draft);
      }
      emit(state.copyWith(isSubmitting: false, isSuccess: true));
    } catch (e) {
      emit(state.copyWith(isSubmitting: false, errorMessage: e.toString()));
    }
  }
}
