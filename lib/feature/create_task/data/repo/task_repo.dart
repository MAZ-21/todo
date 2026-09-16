import 'package:todo/feature/create_task/data/model/task_model.dart';

abstract class TaskRepository {
  Future<void> addTask(TaskModel task);
  Future<void> updateTask(TaskModel task);
  Future<void> deleteTask(String taskId);
  Future<TaskModel> getTaskById(String taskId);
  Stream<List<TaskModel>> getTasks();
}