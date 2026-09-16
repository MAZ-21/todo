class Task {
  final String id;
  final String title;

  Task({required this.id, required this.title});

  factory Task.fromFireStore(Map<String, dynamic> data, String documentId) {
    return Task(
      id: documentId,
      title: data['title'] ?? '',
    );
  }
}