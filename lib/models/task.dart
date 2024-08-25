class Task {
  Task({required this.taskText, this.isDone = false});
  String taskText;
  bool isDone;

  void toggleDone() {
    isDone = !isDone;
  }
}
