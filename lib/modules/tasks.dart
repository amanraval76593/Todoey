class Task {
  late final String name;
  bool isDone;
  Task({required this.name, this.isDone = false});
  void toggleisDone() {
    isDone = !isDone;
  }
}
