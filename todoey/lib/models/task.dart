class Task {
  Task(this.text);

  final String text;
  bool isDone = false;

  void toggleDone() {
    isDone = !isDone;
  }
}
