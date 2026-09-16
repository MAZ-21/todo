import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo/feature/create_task/data/model/task_model.dart';
import 'package:todo/feature/create_task/data/repo/task_repo.dart';

class FirebaseTaskRepository implements TaskRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  FirebaseTaskRepository({FirebaseFirestore? firestore, FirebaseAuth? auth})
    : _firestore = firestore ?? FirebaseFirestore.instance,
      _auth = auth ?? FirebaseAuth.instance;

  CollectionReference<Map<String, dynamic>> get _tasksRef {
    final uid = _auth.currentUser?.uid;
    if (uid == null) {
      throw Exception('No authenticated user — cannot access tasks.');
    }
    return _firestore.collection('users').doc(uid).collection('tasks');
  }

  @override
  Future<void> addTask(TaskModel task) async {
    // .doc() with no id lets Firestore generate the id; we then write it in.
    final docRef = _tasksRef.doc();
    final taskWithId = task.copyWith(id: docRef.id);
    await docRef.set(taskWithId.toFirestore());
  }

  @override
  Future<void> updateTask(TaskModel task) async {
    await _tasksRef.doc(task.id).update(task.toFirestore());
  }

  @override
  Future<void> deleteTask(String taskId) async {
    await _tasksRef.doc(taskId).delete();
  }

  @override
  Future<TaskModel> getTaskById(String taskId) async {
    final doc = await _tasksRef.doc(taskId).get();
    if (!doc.exists) {
      throw Exception('Task not found');
    }
    return TaskModel.fromFirestore(doc);
  }

  @override
  Stream<List<TaskModel>> getTasks() {
    return _tasksRef
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) =>
              snapshot.docs.map((doc) => TaskModel.fromFirestore(doc)).toList(),
        );
  }
}
